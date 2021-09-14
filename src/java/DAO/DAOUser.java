/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import ConnectDB.Connectiondb;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Admin
 */
public class DAOUser {
    static Connectiondb temp = new Connectiondb();
    static Connection conn;
      public int login(String username, String password) {
        try {
            conn = temp.connect();
            /*Create check if username and password is correct statement*/
            PreparedStatement st = conn.prepareStatement("Select * from user where user_name = ? and password = ?");
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            /*If username and password is correct return true*/
            if (rs.next()){
                    if(rs.getInt("role") == 0){
                        return 1;
                    }else{
                        return 2;
                    }
            } else {
                return 0;
            }
          
        } catch (Exception e) {
            System.out.println("Loi " + e);
        }
        return 0;
    }
}
