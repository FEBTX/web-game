/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import ConnectDB.Connectiondb;
import DTO.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import org.omg.PortableInterceptor.USER_EXCEPTION;

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
            if (rs.next()) {
                if (rs.getInt("role") == 0) {
                    return 1;
                } else {
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

    public ArrayList<User> getUser() {
        ArrayList<User> listuser = new ArrayList<>();

        try {
            conn = temp.connect();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM user where role = 1");
            while (rs.next()) {
                User user = new User();
                user.setId_user(rs.getInt(1));
                user.setFullname(rs.getString(2));
                user.setPhone(rs.getString(3));
                user.setAddress(rs.getString(4));
                user.setUser_name(rs.getString(5));
                user.setPassword(rs.getString(6));
                user.setPoint(rs.getInt(7));
                user.setRating(rs.getInt(8));
                listuser.add(user);
            }

        } catch (Exception e) {

        }
        return listuser;
    }

    public User getUserbyUsername(String Username) {
        ArrayList<User> listuser = new ArrayList<>();
        User user = new User();
        try {
            conn = temp.connect();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM user where role = 1 and user_name = '" + Username + "'");
            while (rs.next()) {
                user.setId_user(rs.getInt(1));
                user.setFullname(rs.getString(2));
                user.setPhone(rs.getString(3));
                user.setAddress(rs.getString(4));
                user.setUser_name(rs.getString(5));
                user.setPassword(rs.getString(6));
                user.setPoint(rs.getInt(7));
                user.setRating(rs.getInt(8));
            }

        } catch (Exception e) {

        }
        return user;
    }

    public void UpdateResultUser(String username, float point) {
        DAOHistory dao = new DAOHistory();
        try {
            conn = temp.connect();
            PreparedStatement stmt = conn.prepareStatement("UPDATE user set point=?,rating=? where user_name = ? ");
            stmt.setFloat(1, point);
            stmt.setFloat(2, dao.getRating(username));
            stmt.setString(3, username);
            stmt.executeUpdate();

        } catch (Exception e) {
            System.out.println("loi" + e);
        }
    }

    public void UpdatePoint(String username, float point) {
        try {
            conn = temp.connect();
            PreparedStatement stmt = conn.prepareStatement("UPDATE user set point=? where user_name = ? ");
            stmt.setFloat(1, point);
            stmt.setString(2, username);
            stmt.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void UpdateinfoUser(String username, String fullname, String Phone, String Address, String Password) {
        if (Password != null) {
            try {
                conn = temp.connect();
                PreparedStatement stmt = conn.prepareStatement("UPDATE user set password=? where user_name = ? ");
                stmt.setString(1, Password);
                stmt.setString(2, username);
                stmt.executeUpdate();

            } catch (Exception e) {
                System.out.println(e);
            }
        } else {
            try {
                conn = temp.connect();
                PreparedStatement stmt = conn.prepareStatement("UPDATE user set fullname=?,phone=?,address? where user_name = ? ");
                stmt.setString(1, fullname);
                stmt.setString(2, Phone);
                stmt.setString(3, Address);
                stmt.setString(4, username);
                stmt.executeUpdate();

            } catch (Exception e) {
                System.out.println(e);
            }
        }

    }
}
