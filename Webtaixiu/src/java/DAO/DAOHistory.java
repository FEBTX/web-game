/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import ConnectDB.Connectiondb;
import static DAO.DAOHistoryRoom.conn;
import static DAO.DAOHistoryRoom.temp;
import DTO.History;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class DAOHistory {

    static Connectiondb temp = new Connectiondb();
    static Connection conn;

    public static void InsertHistory(String user_name, String betresult, String bet, int betpoint, int betwin, int room_id) {
        try {
            conn = temp.connect();
            PreparedStatement stmt = conn.prepareStatement("Insert into history values(?, ?, ?, ?, ?,?,?)");
            stmt.setInt(1, 0);
            stmt.setString(2, user_name);
            stmt.setString(3, betresult);
            stmt.setString(4, bet);
            stmt.setInt(5, betpoint);
            stmt.setInt(6, betwin);
            stmt.setInt(7, room_id);
            stmt.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
     public ArrayList<History> getHistorybyUsername(String Username) {
        ArrayList<History> listhistory= new ArrayList<>();
        try {
            conn = temp.connect();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM history where user_name = '"+Username+"'");
            while (rs.next()) {
                History history = new History();
                history.setUser_name(rs.getString("user_name"));
                history.setBetresult(rs.getString("betresult"));
                history.setBet(rs.getString("bet"));
                history.setBetpoint(rs.getInt("betpoint"));
                history.setWinpoint(rs.getInt("winpoint"));
                history.setId_room(rs.getInt("id_room"));
                listhistory.add(history);
            }

        } catch (Exception e) {

        }
        return listhistory;
    }
 public ArrayList<History> getHistoryallUser() {
        ArrayList<History> listhistory= new ArrayList<>();
        try {
            conn = temp.connect();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM history");
            while (rs.next()) {
                History history = new History();
                history.setUser_name(rs.getString("user_name"));
                history.setBetresult(rs.getString("betresult"));
                history.setBet(rs.getString("bet"));
                history.setBetpoint(rs.getInt("betpoint"));
                history.setWinpoint(rs.getInt("winpoint"));
                history.setId_room(rs.getInt("id_room"));
                listhistory.add(history);
            }

        } catch (Exception e) {

        }
        return listhistory;
    }
}
