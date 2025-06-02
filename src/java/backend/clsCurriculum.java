/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package backend;

import java.sql.Date;
import java.util.List;

/**
 *
 * @author Dirinfo
 */
public class clsCurriculum {
    public String Nombre;
    public java.sql.Date FechaNacimiento;
    public String Telefono;
    public String Correo;
    public String Domicilio;
    public List<clsExperienciaLaboral> Trabajos;
    public List<clsEducacion> Educacion;


    public clsCurriculum() {
    }
    

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }
    public List<clsExperienciaLaboral> getTrabajos() {
        return Trabajos;
    }

    public void setTrabajos(List<clsExperienciaLaboral> Trabajos) {
        this.Trabajos = Trabajos;
    }

    public List<clsEducacion> getEducacion() {
        return Educacion;
    }

    public void setEducacion(List<clsEducacion> Educacion) {
        this.Educacion = Educacion;
    }

    public Date getFechaNacimiento() {
        return FechaNacimiento;
    }

    public void setFechaNacimiento(Date FechaNacimiento) {
        this.FechaNacimiento = FechaNacimiento;
    }

    public String getDomicilio() {
        return Domicilio;
    }

    public void setDomicilio(String Domicilio) {
        this.Domicilio = Domicilio;
    }
    
}
