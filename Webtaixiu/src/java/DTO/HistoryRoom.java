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
    private String result;
    private int status;
    private int total_played;
    private int totalNumber;

    public HistoryRoom(int id_room, String result, int status, int total_played, int totalNumber) {
        this.id_room = id_room;
        this.result = result;
        this.status = status;
        this.total_played = total_played;
        this.totalNumber = totalNumber;
    }

    public int getId_room() {
        return id_room;
    }

    public void setId_room(int id_room) {
        this.id_room = id_room;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
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

    public int getTotalNumber() {
        return totalNumber;
    }

    public void setTotalNumber(int totalNumber) {
        this.totalNumber = totalNumber;
    }
    public HistoryRoom() {
    }

}
