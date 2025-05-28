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
    static {
        // Cargar el driver al iniciar la clase
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            System.err.println("Error al cargar el driver JDBC: " + e.getMessage());
            throw new ExceptionInInitializerError("No se pudo cargar el driver de SQL Server");
        }
    }
    public static Connection getConexion()
    {
        String cadena = "jdbc:sqlserver://localhost:1433;databaseName=PFcv;user=vscode;password=123456789;encrypt=false;trustServerCertificate=true;";

        try{
           Connection con = DriverManager.getConnection(cadena);
           return con;
        }catch(SQLException e){
            System.out.println("Error de conexión: " + e.getMessage());
            if (e.getErrorCode() == 18456) {
                System.err.println("Error de autenticación: usuario/contraseña incorrectos");
            } else if (e.getErrorCode() == 4060) {
                System.err.println("Base de datos no encontrada");
            }
            return null;
        }
                
    }
}
