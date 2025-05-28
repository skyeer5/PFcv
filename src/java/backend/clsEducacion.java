/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package backend;

import java.sql.Date;

/**
 *
 * @author Dirinfo
 */
public class clsEducacion {
    public String Institucion;
    public String Titulo;
    public Date Fecha;

    public clsEducacion(String Institucion, String Titulo, Date Fecha) {
        this.Institucion = Institucion;
        this.Titulo = Titulo;
        this.Fecha = Fecha;
    }

    public clsEducacion() {
    }


    public String getInstitucion() {
        return Institucion;
    }

    public void setInstitucion(String Institucion) {
        this.Institucion = Institucion;
    }

    public String getTitulo() {
        return Titulo;
    }

    public void setTitulo(String Titulo) {
        this.Titulo = Titulo;
    }

    public Date getFecha() {
        return Fecha;
    }

    public void setFecha(Date Fecha) {
        this.Fecha = Fecha;
    }


}
