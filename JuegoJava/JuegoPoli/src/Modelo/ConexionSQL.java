
package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConexionSQL {
    Connection cn = null;
  public Connection Conectarse(){
 
     try{
       Class.forName("com.micisoft.sqlserver.jdbc.SQLServerDriver");
       cn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databasesName=DBTrviaPoli;user=sa;password=123");
         System.out.println("Conexión Exitosa");
     }catch(Exception error){
         System.out.println("Error de conexoion: "+ error.getMessage());
        
     }
      return cn;
  }

   
}
