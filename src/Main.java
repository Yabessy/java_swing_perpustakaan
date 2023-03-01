
import javax.swing.JOptionPane;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Imanu
 */
public class Main {
    public static void main(String[] args) {
         while(true){
            String password = JOptionPane.showInputDialog("masukan Password");
            if(password.equals("akuadmin")){
                    adminTambahBuku entry = new adminTambahBuku();
                entry.setVisible(true);
                break;
            }
        }   
    }
}
