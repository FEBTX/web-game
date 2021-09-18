/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import ConnectDB.Connectiondb;
import java.sql.Connection;
import java.sql.PreparedStatement;

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
}
