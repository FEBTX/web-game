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
public class History {
    private int id;
    private int user_id1;
    private int user_id2;
    private int winmatch_user1;
    private int winmatch_user2;

    public History(int id, int user_id1, int user_id2, int winmatch_user1, int winmatch_user2) {
        this.id = id;
        this.user_id1 = user_id1;
        this.user_id2 = user_id2;
        this.winmatch_user1 = winmatch_user1;
        this.winmatch_user2 = winmatch_user2;
    }

    public History() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id1() {
        return user_id1;
    }

    public void setUser_id1(int user_id1) {
        this.user_id1 = user_id1;
    }

    public int getUser_id2() {
        return user_id2;
    }

    public void setUser_id2(int user_id2) {
        this.user_id2 = user_id2;
    }

    public int getWinmatch_user1() {
        return winmatch_user1;
    }

    public void setWinmatch_user1(int winmatch_user1) {
        this.winmatch_user1 = winmatch_user1;
    }

    public int getWinmatch_user2() {
        return winmatch_user2;
    }

    public void setWinmatch_user2(int winmatch_user2) {
        this.winmatch_user2 = winmatch_user2;
    }
    
}
