
package info.ecom.dbutils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DbConnection {
    public Connection getConnection(){
        try{
          
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommercetest", "root", "gokul");
            return con;
        }catch(ClassNotFoundException | SQLException e){
        	
        	System.out.println("Error at connecting DB : " +e);
        }
        
        return  null;
    }
}
