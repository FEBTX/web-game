/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import static DAO.DAOHistoryRoom.conn;
import static DAO.DAOHistoryRoom.temp;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Admin
 */
public class DAOHistory {

    public static void InsertHistory(String user_name, String betresult, String bet, int betpoint, int betwin) {
        try {
            conn = temp.connect();
            PreparedStatement stmt = conn.prepareStatement("Insert into history_room values(?, ?, ?, ?, ?)");
            stmt.setInt(1, 0);
            stmt.setString(2, user_name);
            stmt.setString(3, betresult);
            stmt.setString(4, bet);
            stmt.setInt(5, betpoint);
            stmt.setInt(6, betwin);
            stmt.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

}
