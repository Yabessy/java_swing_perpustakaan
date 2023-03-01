/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package connection;

/**
 *
 * @author Imanu
 */
import java.sql.*;
import javax.swing.JOptionPane;

public class connection {
    public static Connection openConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/perpustakaan2", "root", "");
            return conn;
        } catch(Exception e){
            JOptionPane.showMessageDialog(null, e);
            return null;
        }
    }
}
