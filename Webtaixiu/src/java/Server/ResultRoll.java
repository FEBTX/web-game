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
            System.out.println("User name " + message);
        } else {
            for (Session session : users) {
                String a[] = message.split("/");
                //thang/tai/5/32.5/837
                System.out.println(message);
                System.out.println(username);
                DAOUser daouser = new DAOUser();
                User user = daouser.getUserbyUsername(username);
                double betwin = Integer.parseInt(a[2])*1.5;
                float winbet = (float)betwin - Float.parseFloat(a[2]);
                DAO.DAOHistory.InsertHistory(username, a[0], a[1], Float.parseFloat(a[2]), winbet, Integer.parseInt(a[4]));
                daouser.UpdateResultUser(username, Float.parseFloat(a[3]));
                
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
