/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

/**
 *
 * @author JuanPablo
 */
public class Compromiso {
    String nombreActividad;
    String horasSemanales;
    String horasSemestrales;
    
    public Compromiso(String n, String hs, String hss){
        this.nombreActividad = n;
        this.horasSemanales = hs;
        this.horasSemestrales = hss;
    }

    public String getNombreActividad() {
        return nombreActividad;
    }

    public void setNombreActividad(String nombreActividad) {
        this.nombreActividad = nombreActividad;
    }

    public String getHorasSemanales() {
        return horasSemanales;
    }

    public void setHorasSemanales(String horasSemanales) {
        this.horasSemanales = horasSemanales;
    }

    public String getHorasSemestrales() {
        return horasSemestrales;
    }

    public void setHorasSemestrales(String horasSemestrales) {
        this.horasSemestrales = horasSemestrales;
    }

    
    
    
}
