/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package backend;

/**
 *
 * @author Dirinfo
 */
public class clsEducacion {
    public String Institucion;
    public String Titulo;
    public String Fecha;
    public int IdClsCurriculum;

    public clsEducacion(String Institucion, String Titulo, String Fecha, int IdClsCurriculum) {
        this.Institucion = Institucion;
        this.Titulo = Titulo;
        this.Fecha = Fecha;
        this.IdClsCurriculum = IdClsCurriculum;
    }

    public int getIdClsCurriculum() {
        return IdClsCurriculum;
    }

    public void setIdClsCurriculum(int IdClsCurriculum) {
        this.IdClsCurriculum = IdClsCurriculum;
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

    public String getFecha() {
        return Fecha;
    }

    public void setFecha(String Fecha) {
        this.Fecha = Fecha;
    }
}
