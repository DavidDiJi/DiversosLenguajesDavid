/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author david
 */
public class Jugador {
    
    private String NickName;
    
    public String GetFecha(){
       return NickName;
    }
    public void SetFecha(String NickName){
  
        this.NickName = NickName;   
    }
}
