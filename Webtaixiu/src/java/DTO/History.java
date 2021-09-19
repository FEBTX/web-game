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
  
    private int id ;
    private String user_name;
     private String betresult;
      private String bet;
       private int betpoint ;
       private int winpoint;
       private int id_room;

    public History(int id, String user_name, String betresult, String bet, int betpoint, int winpoint, int id_room) {
        this.id = id;
        this.user_name = user_name;
        this.betresult = betresult;
        this.bet = bet;
        this.betpoint = betpoint;
        this.winpoint = winpoint;
        this.id_room = id_room;
    }

    public History() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getBetresult() {
        return betresult;
    }

    public void setBetresult(String betresult) {
        this.betresult = betresult;
    }

    public String getBet() {
        return bet;
    }

    public void setBet(String bet) {
        this.bet = bet;
    }

    public int getBetpoint() {
        return betpoint;
    }

    public void setBetpoint(int betpoint) {
        this.betpoint = betpoint;
    }

    public int getWinpoint() {
        return winpoint;
    }

    public void setWinpoint(int winpoint) {
        this.winpoint = winpoint;
    }

    public int getId_room() {
        return id_room;
    }

    public void setId_room(int id_room) {
        this.id_room = id_room;
    }
       
}
