/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package backend;

/**
 *
 * @author skyee
 */
public class clsCurriculumVm {
    int id;
    String Nombre;
    String Correo;
    String EduInstitucion;
    String EduTitulo;
    String ExpEmpresa;
    String ExpCargo;

    public clsCurriculumVm() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getEduInstitucion() {
        return EduInstitucion;
    }

    public void setEduInstitucion(String EduInstitucion) {
        this.EduInstitucion = EduInstitucion;
    }

    public String getEduTitulo() {
        return EduTitulo;
    }

    public void setEduTitulo(String EduTitulo) {
        this.EduTitulo = EduTitulo;
    }

    public String getExpEmpresa() {
        return ExpEmpresa;
    }

    public void setExpEmpresa(String ExpEmpresa) {
        this.ExpEmpresa = ExpEmpresa;
    }

    public String getExpCargo() {
        return ExpCargo;
    }

    public void setExpCargo(String ExpCargo) {
        this.ExpCargo = ExpCargo;
    }
    
  
}
