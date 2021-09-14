/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author Admin
 */
public class User {

    private int id_user;
    private String fullname;
    private String phone;
    private String address;
    private String user_name;
    private String password;
    private int matchpalyed;
    private int winmatch;
    private int point;
    private float rating;

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getMatchpalyed() {
        return matchpalyed;
    }

    public void setMatchpalyed(int matchpalyed) {
        this.matchpalyed = matchpalyed;
    }

    public int getWinmatch() {
        return winmatch;
    }

    public void setWinmatch(int winmatch) {
        this.winmatch = winmatch;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }

    public float getRating() {
        return rating;
    }

    public void setRating(float rating) {
        this.rating = rating;
    }

    public User(int id_user, String fullname, String phone, String address, String user_name, String password, int matchpalyed, int winmatch, int point, float rating) {
        this.id_user = id_user;
        this.fullname = fullname;
        this.phone = phone;
        this.address = address;
        this.user_name = user_name;
        this.password = password;
        this.matchpalyed = matchpalyed;
        this.winmatch = winmatch;
        this.point = point;
        this.rating = rating;
    }

    public User() {
    }

}
