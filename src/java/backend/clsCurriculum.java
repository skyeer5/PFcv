/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package backend;

import java.util.List;

/**
 *
 * @author Dirinfo
 */
public class clsCurriculum {
    public String Nombre;
    public String Telefono;
    public String Correo;
    public String AcercaDeMi;
    public List<clsExperienciaLaboral> Trabajos;
    public List<clsEducacion> Educacion;

    public clsCurriculum(String Nombre, String Telefono, String Correo, String AcercaDeMi, List<clsExperienciaLaboral> Trabajos, List<clsEducacion> Educacion) {
        this.Nombre = Nombre;
        this.Telefono = Telefono;
        this.Correo = Correo;
        this.AcercaDeMi = AcercaDeMi;
        this.Trabajos = Trabajos;
        this.Educacion = Educacion;
    }

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

    public String getAcercaDeMi() {
        return AcercaDeMi;
    }

    public void setAcercaDeMi(String AcercaDeMi) {
        this.AcercaDeMi = AcercaDeMi;
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
}
