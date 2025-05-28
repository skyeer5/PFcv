/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package backend.database;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;
/**
 *
 * @author Dirinfo
 */
public class clsConexion {
    public static Connection getConexion()
    {
        String cadena = "jdbc:sqlserver:"+
                "//localhost:1433;"+
                "databaseName=PFcv;"+
                "user=vscode;"+
                "password=123456789;"+
                "encrypt=false;"+
                "trustServerCertificate=true;";
        try{
           Connection con = DriverManager.getConnection(cadena);
           return con;
        }catch(SQLException e){
            System.out.println(e.toString());
            return null;
        }
                
    }
}
