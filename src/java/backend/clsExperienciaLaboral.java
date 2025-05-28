/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package backend;

/**
 *
 * @author Dirinfo
 */
public class clsExperienciaLaboral {
    public int Id;
    public String Empresa;
    public String FechaInicial;
    public String FechaFinal;
    public int IdClsCurriculum;


    public clsExperienciaLaboral(int Id, int IdClsCurriculum, String Empresa, String FechaInicial, String FechaFinal) {
        this.Id = Id;
        this.IdClsCurriculum = IdClsCurriculum;
        this.Empresa = Empresa;
        this.FechaInicial = FechaInicial;
        this.FechaFinal = FechaFinal;
    }


    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getEmpresa() {
        return Empresa;
    }

    public void setEmpresa(String Empresa) {
        this.Empresa = Empresa;
    }

    public String getFechaInicial() {
        return FechaInicial;
    }

    public void setFechaInicial(String FechaInicial) {
        this.FechaInicial = FechaInicial;
    }

    public String getFechaFinal() {
        return FechaFinal;
    }

    public void setFechaFinal(String FechaFinal) {
        this.FechaFinal = FechaFinal;
    }
    public int getIdClsCurriculum() {
        return IdClsCurriculum;
    }
    public void setIdClsCurriculum(int IdClsCurriculum) {
        this.IdClsCurriculum = IdClsCurriculum;
    }
}
