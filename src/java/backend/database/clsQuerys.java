/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package backend.database;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Statement;
import backend.clsCurriculum;
import backend.clsCurriculumVm;
import backend.clsEducacion;
import backend.clsExperienciaLaboral;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Dirinfo
 */
public class clsQuerys {
    public int fncIngresarCurriculum(clsCurriculum curriculum) {
    Connection con = null;
    PreparedStatement psCurriculum = null;
    ResultSet rs = null;
    int resp = 0;
    
    try {
        con = clsConexion.getConexion();
        if (con == null) {
            System.err.println("Error: Conexión nula");
            return 0;
        }
        
        // Iniciar transacción
        con.setAutoCommit(false);
        
        // 1. Insertar curriculum principal
        String queryCurriculum = "INSERT INTO Curriculum(Nombre, Telefono, Correo, Domicilio) VALUES(?,?,?,?)";
        psCurriculum = con.prepareStatement(queryCurriculum, Statement.RETURN_GENERATED_KEYS);
        psCurriculum.setString(1, curriculum.Nombre);
        psCurriculum.setString(2, curriculum.Telefono);
        psCurriculum.setString(3, curriculum.Correo);
        psCurriculum.setString(4, curriculum.Domicilio);
        psCurriculum.executeUpdate();
            // Obtener ID generado
        rs = psCurriculum.getGeneratedKeys();
        if (!rs.next()) {
            throw new SQLException("No se pudo obtener el ID del curriculum");
        }
        int curriculumId = rs.getInt(1);
        
        if(curriculum.Educacion!=null)
        {
        // 2. Insertar educación
        for (clsEducacion edu : curriculum.Educacion) {
            String queryEducacion = "INSERT INTO Educacion(Institucion, Titulo, Fecha, CurriculumId) VALUES(?,?,?,?)";
            try (PreparedStatement psEdu = con.prepareStatement(queryEducacion)) {
                psEdu.setString(1, edu.Institucion);
                psEdu.setString(2, edu.Titulo);
                psEdu.setDate(3, new java.sql.Date(edu.Fecha.getTime()));
                psEdu.setInt(4, curriculumId);
                psEdu.executeUpdate();
            }
        }
        }
        
        if(curriculum.Trabajos!= null)
        {
            // 3. Insertar experiencia laboral
        for (clsExperienciaLaboral lab : curriculum.Trabajos) {
            String queryExperiencia = "INSERT INTO ExperienciaLaboral(Empresa, Cargo, FechaInicial, FechaFinal,Responsabilidades, CurriculumId) VALUES(?,?,?,?,?,?)";
            try (PreparedStatement psLab = con.prepareStatement(queryExperiencia)) {
                psLab.setString(1, lab.Empresa);
                psLab.setString(2, lab.Cargo);
                psLab.setDate(3, new java.sql.Date(lab.FechaInicial.getTime()));
                psLab.setDate(4, lab.FechaFinal != null ? new java.sql.Date(lab.FechaFinal.getTime()) : null);
                psLab.setString(5, lab.Responsabilidades);
                psLab.setInt(6, curriculumId);
                psLab.executeUpdate();
            }
        }
        }
        
        
        // Confirmar transacción
        con.commit();
        resp = curriculumId; // Devolvemos el ID generado
        
    } catch (SQLException e) {
        System.out.println(e.toString());
    } finally {
        // Cerrar recursos en orden inverso a su creación
        try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignorar */ }
        try { if (psCurriculum != null) psCurriculum.close(); } catch (SQLException e) { /* ignorar */ }
        try { if (con != null) con.close(); } catch (SQLException e) { /* ignorar */ }
    }
    
    return resp;
}
    public String GetNombreById(int id)
    {
        try{
            Connection con = clsConexion.getConexion();
            String query = "SELECT Nombre FROM Curriculum WHERE Id = "+id;
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            if(rs.next())
            {
                return rs.getString("Nombre");
            }
            else{
                return "No se encontro el nombre";
            }
        }catch(SQLException e)
        {
            System.out.println(e.getMessage());
            return "Error al realizar la consulta";
        }
        
    }
    public List<clsCurriculumVm> GetListaCurriculum(){
        try{
            List<clsCurriculumVm> curList = new ArrayList();
            Connection con = clsConexion.getConexion();
            String query = "select cur.Id, cur.Nombre, cur.Correo, edu.Titulo, edu.Institucion, exp.Empresa, exp.Cargo from Curriculum cur outer apply(select top 1* from Educacion where CurriculumId = cur.Id order by Fecha desc) edu outer apply(select top 1* from ExperienciaLaboral where CurriculumId = cur.Id order by FechaFinal desc) exp where cur.Habilitado = 1;";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                var cur = new clsCurriculumVm();
                cur.setId(rs.getInt("Id"));
                cur.setNombre(rs.getString("Nombre"));
                cur.setCorreo(rs.getString("Correo"));
                cur.setEduTitulo(rs.getString("Titulo"));
                cur.setEduInstitucion(rs.getString("Institucion"));
                cur.setExpEmpresa(rs.getString("Empresa"));
                cur.setExpCargo(rs.getString("Cargo"));
                curList.add(cur);
            }
            return curList;
        }catch(SQLException e){
            System.out.println(e.getMessage());
            return null;
        }
    }
    public int DeleteCurriculum(int id){
        try{
            Connection con = clsConexion.getConexion();
            String query = "update Curriculum set Habilitado=0 where Id="+id;
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                return 1;
            }
            else{
                return 0;
            }
        }catch(SQLException e){
            System.out.println(e.getMessage());
            return 0;
        }
    }
}
