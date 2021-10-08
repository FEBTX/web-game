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
    int totalplayed = 0;
    int totalwin = 0;
    public static void InsertHistory(String user_name, String betresult, String bet, float betpoint, float betwin, int room_id) {
        try {
            conn = temp.connect();
            PreparedStatement stmt = conn.prepareStatement("Insert into history values(?, ?, ?, ?, ?,?,?)");
            stmt.setInt(1, 0);
            stmt.setString(2, user_name);
            stmt.setString(3, betresult);
            stmt.setString(4, bet);
            stmt.setFloat(5, betpoint);
            stmt.setFloat(6, betwin);
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
        for(History history : listhistory){
            if(history.getBetresult().equals("thang")){
                totalwin +=1;
            }
        }
        totalplayed = listhistory.size();
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
     public  float getRating(String Username){
         getHistorybyUsername(Username);
         float rating =(float) totalwin/totalplayed;
         return rating * 100;
     }
}
