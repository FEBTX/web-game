package Server;

import DAO.DAOHistoryRoom;
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

@ServerEndpoint(value = "/Playgame")
public class RollServer {
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
                                String a[] = message.split("");
                               int total = Integer.parseInt(a[0]) + Integer.parseInt(a[1]) + Integer.parseInt(a[2]);
                               if(total < 10){
                                 long idroom = DAOHistoryRoom.InsertHistoryRoom("xiu", total);
                                session.getBasicRemote().sendText(message + "/" + idroom);
                                   System.out.println(idroom);
                               }else{
                                   long idroom = DAOHistoryRoom.InsertHistoryRoom("tai", total);
                                   session.getBasicRemote().sendText(message + "/" + idroom);
                                   System.out.println(idroom);
                               }
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
