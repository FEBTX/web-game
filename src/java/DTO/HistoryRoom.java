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
public class HistoryRoom {
    private int id_room;
    private int small;
    private int large;
    private int status;
    private int total_played;
    private int number_play;
    private int user_id1;
    private int user_id2;

    public HistoryRoom(int id_room, int small, int large, int status, int total_played, int number_play, int user_id1, int user_id2) {
        this.id_room = id_room;
        this.small = small;
        this.large = large;
        this.status = status;
        this.total_played = total_played;
        this.number_play = number_play;
        this.user_id1 = user_id1;
        this.user_id2 = user_id2;
    }

    public HistoryRoom() {
    }

    public int getId_room() {
        return id_room;
    }

    public void setId_room(int id_room) {
        this.id_room = id_room;
    }

    public int getSmall() {
        return small;
    }

    public void setSmall(int small) {
        this.small = small;
    }

    public int getLarge() {
        return large;
    }

    public void setLarge(int large) {
        this.large = large;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getTotal_played() {
        return total_played;
    }

    public void setTotal_played(int total_played) {
        this.total_played = total_played;
    }

    public int getNumber_play() {
        return number_play;
    }

    public void setNumber_play(int number_play) {
        this.number_play = number_play;
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
    
}
