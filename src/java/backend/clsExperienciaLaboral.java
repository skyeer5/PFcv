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
public class clsExperienciaLaboral {
    public String Empresa;
    public String Cargo;
    public Date FechaInicial;
    public Date FechaFinal;

    public clsExperienciaLaboral(String Empresa, String Cargo, Date FechaInicial, Date FechaFinal) {
        this.Empresa = Empresa;
        this.Cargo = Cargo;
        this.FechaInicial = FechaInicial;
        this.FechaFinal = FechaFinal;
    }

    public clsExperienciaLaboral() {
    }

    
    public String getCargo() {
        return Cargo;
    }

    public void setCargo(String Cargo) {
        this.Cargo = Cargo;
    }

    public Date getFechaInicial() {
        return FechaInicial;
    }

    public void setFechaInicial(Date FechaInicial) {
        this.FechaInicial = FechaInicial;
    }

    public Date getFechaFinal() {
        return FechaFinal;
    }

    public void setFechaFinal(Date FechaFinal) {
        this.FechaFinal = FechaFinal;
    }

    public String getEmpresa() {
        return Empresa;
    }

    public void setEmpresa(String Empresa) {
        this.Empresa = Empresa;
    }

}
