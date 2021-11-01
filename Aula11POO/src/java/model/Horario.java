/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Dell Inspiron 153000
 */
public class Horario {
    private int horas;
    private int minutos;
    private int segundos;

    /**
    *Construtor que inicialia a hora com 00:00:00
    */
    public Horario(){
        horas = 0;
        minutos = 0;
        segundos = 0;
    }
    
    /**
    *Construtor que inicialia com os parâmetros
    * @param horas
    * @param minutos
    * @param segundos
    */
    public Horario(int horas, int minutos, int segundos){
        this.setHorario(horas, minutos, segundos);
    }    
    
    private void setHorario(int horas, int minutos, int segundos){
        this.setHoras(horas);
        this.setMinutos(minutos);
        this.setSegundos(segundos);
    }
    
    public String getHorario(){
        String horario = "";
        if (horas<10) horario += "0"; 
        horario += horas + ":";
        if (minutos<10) horario += "0";
        horario += minutos + ":";
        if (segundos<10) horario += "0";
        horario += segundos;
        return horario;
    }

    public int getHoras() {
        return horas;
    }

    public void setHoras(int horas) {    
        if (horas<1) this.horas = 1;
        else if (horas > 23) this.horas = 0;
        else this.horas = horas;   
    }

    public int getMinutos() {
        return minutos;
    }

    public void setMinutos(int minutos) {
        if (minutos<0) this.minutos = 0;
        else if (minutos > 59) this.minutos = 0;
        else this.minutos = minutos;
    }

    public int getSegundos() {
        return segundos;
    }

    public void setSegundos(int segundos) {
        if (segundos<0) this.segundos = 0;
        else if (segundos > 59) this.segundos = 0;
        else this.segundos = segundos;
    }
}
