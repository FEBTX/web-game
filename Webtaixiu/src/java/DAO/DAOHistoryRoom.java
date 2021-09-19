/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import ConnectDB.Connectiondb;
import static DAO.DAOUser.conn;
import static DAO.DAOUser.temp;
import DTO.HistoryRoom;
import DTO.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class DAOHistoryRoom {

    static Connectiondb temp = new Connectiondb();
    static Connection conn;

    public static void InsertHistoryRoom(String result, int total) {
        try {
            conn = temp.connect();
            PreparedStatement stmt = conn.prepareStatement("Insert into history_room values(?, ?, ?, ?, ?)");
            stmt.setInt(1, 0);
            stmt.setString(2, result);
            stmt.setInt(3, 1);
            stmt.setInt(4, 1);
            stmt.setInt(5, total);
            stmt.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public ArrayList<HistoryRoom> getHistory() {
        ArrayList<HistoryRoom> historyRooms = new ArrayList<>();
        try {
            conn = temp.connect();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM history_room");
            while (rs.next()) {
                HistoryRoom history = new HistoryRoom();
                history.setId_room(rs.getInt(1));
                history.setResult(rs.getString(2));
                history.setStatus(rs.getInt(3));
                history.setTotal_played(rs.getInt(4));
                history.setTotalNumber(rs.getInt(5));
                historyRooms.add(history);
            }

        } catch (Exception e) {

        }
        return historyRooms;
    }
}
