/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Server;

import DAO.DAOUser;
import DTO.User;
import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

/**
 *
 * @author Admin
 */
@ServerEndpoint(value = "/sendresults")
public class ResultRoll {

    static Set<Session> users = Collections.synchronizedSet(new HashSet<>());

    @OnOpen
    public void handleOpen(Session session) {
        users.add(session);
    }

    @OnMessage
    public void handleMessage(String message, Session userSession) throws IOException {
        String username = (String) userSession.getUserProperties().get("username");
        if (username == null) {
            userSession.getUserProperties().put("username", message);
            userSession.getBasicRemote().sendText("System: you are connectd as " + message);
        } else {
            for (Session session : users) {
                session.getBasicRemote().sendText(username + ": " + message);
                String a[] = message.split("/");
                //huybui/thua/tai/1000/1500/57
                DAOUser daouser = new DAOUser();
                User user = daouser.getUserbyUsername(a[0]);
                int winbet = Integer.parseInt(a[4]) - Integer.parseInt(a[3]);
                DAO.DAOHistory.InsertHistory(a[0], a[1], a[2], Integer.parseInt(a[3]), winbet, Integer.parseInt(a[5]));
                daouser.UpdateResultUser(a[0], user.getPoint()+winbet);
                System.out.println(message);
            }
        }
    }

    @OnClose
    public void handleClose(Session session) {
        users.remove(session);
    }

    @OnError
    public void handleError(Throwable t) {
        t.printStackTrace();
    }
}
