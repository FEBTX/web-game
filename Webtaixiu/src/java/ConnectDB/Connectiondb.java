/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ConnectDB;

import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author longvo
 */
public class Connectiondb {
     public  java.sql.Connection connect() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
             DriverManager.getConnection("jdbc:mysql://localhost/taixiu", "root", "");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
        return DriverManager.getConnection("jdbc:mysql://localhost/taixiu", "root", "");

    }
}
