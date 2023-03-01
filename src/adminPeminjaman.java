
import java.sql.*;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
/**
 *
 * @author Imanu
 */
public class adminPeminjaman extends javax.swing.JFrame {

    public Statement st;
    public ResultSet rs;
    Connection conn = connection.connection.openConnection();

    /**
     * Creates new form adminPeminjaman
     */
    public adminPeminjaman() {
        initComponents();
        showLendingsData();
    }

    public void searchLendingsData() {
        try {
            st = conn.createStatement();
            rs = st.executeQuery("SELECT users.name,books.title,lendings.* FROM lendings "
                    + "INNER JOIN users ON lendings.user_id=users.id "
                    + "INNER JOIN books ON lendings.book_id=books.id "
                    + "WHERE name LIKE '%" + user_name.getText() + "%' AND title LIKE '%" + book_title.getText() + "%'");
            DefaultTableModel model = new DefaultTableModel();
//            model.addColumn("no");
            model.addColumn("id");
            model.addColumn("user_name");
            model.addColumn("book_title");
            model.addColumn("status");
            model.addColumn("amount");
            model.addColumn("start_of_lend");
            model.addColumn("end_of_lend");

//            int no = 1;
            model.getDataVector().removeAllElements();
            model.fireTableDataChanged();
            model.setRowCount(0);
            while (rs.next()) {
                String lendingStatus = rs.getString("status");
                switch (lendingStatus) {
                    case "0":
                        lendingStatus = "Ditolak";
                        break;
                    case "1":
                        lendingStatus = "Belum Direspon";
                        break;
                    case "2":
                        lendingStatus = "Diterima";
                        break;
                    default:
                        lendingStatus = "error";
                        break;
                }
                Object[] data = {
                    rs.getString("id"),
                    rs.getString("name"),
                    rs.getString("title"),
                    lendingStatus,
                    rs.getString("amount"),
                    rs.getString("start_of_lend"),
                    rs.getString("end_of_lend"),};
                model.addRow(data);
                lendings_table.setModel(model);
            }

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e, "Validasi data", JOptionPane.INFORMATION_MESSAGE);
        }
    }

    public void showLendingsData() {
        try {
            st = conn.createStatement();
            rs = st.executeQuery("SELECT u.name,b.title,l.* FROM lendings l INNER JOIN users u ON l.user_id=u.id INNER JOIN books b ON l.book_id=b.id ");
            DefaultTableModel model = new DefaultTableModel();
//            model.addColumn("no");
            model.addColumn("id");
            model.addColumn("user_name");
            model.addColumn("book_title");
            model.addColumn("status");
            model.addColumn("amount");
            model.addColumn("start_of_lend");
            model.addColumn("end_of_lend");

//            int no = 1;
            model.getDataVector().removeAllElements();
            model.fireTableDataChanged();
            model.setRowCount(0);
            while (rs.next()) {
                String lendingStatus = rs.getString("status");
                switch (lendingStatus) {
                    case "0":
                        lendingStatus = "Ditolak";
                        break;
                    case "1":
                        lendingStatus = "Belum Direspon";
                        break;
                    case "2":
                        lendingStatus = "Diterima";
                        break;
                    default:
                        lendingStatus = "error";
                        break;
                }
                Object[] data = {
                    rs.getString("id"),
                    rs.getString("name"),
                    rs.getString("title"),
                    lendingStatus,
                    rs.getString("amount"),
                    rs.getString("start_of_lend"),
                    rs.getString("end_of_lend"),};
                model.addRow(data);
                lendings_table.setModel(model);
            }

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e, "Validasi data", JOptionPane.INFORMATION_MESSAGE);
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        book = new javax.swing.JButton();
        jButton1 = new javax.swing.JButton();
        user = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        book_title = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        user_name = new javax.swing.JTextField();
        jLabel1 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        lendings_table = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Data Peminjaman");

        jPanel1.setBackground(new java.awt.Color(153, 0, 255));

        book.setText("books");
        book.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bookActionPerformed(evt);
            }
        });

        jButton1.setText("librarians");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        user.setText("users");
        user.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                userActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(18, 18, 18)
                .addComponent(book)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jButton1)
                .addGap(18, 18, 18)
                .addComponent(user)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(book)
                    .addComponent(jButton1)
                    .addComponent(user))
                .addContainerGap(16, Short.MAX_VALUE))
        );

        jPanel2.setBackground(new java.awt.Color(153, 0, 255));

        book_title.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                book_titleActionPerformed(evt);
            }
        });
        book_title.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                book_titleKeyReleased(evt);
            }
        });

        jLabel7.setForeground(new java.awt.Color(255, 255, 255));
        jLabel7.setText("book_title");

        user_name.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                user_nameActionPerformed(evt);
            }
        });
        user_name.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                user_nameKeyReleased(evt);
            }
        });

        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setText("user_name");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(13, 13, 13)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(user_name, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jLabel7)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(book_title, javax.swing.GroupLayout.PREFERRED_SIZE, 208, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(201, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(21, 21, 21)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel7)
                    .addComponent(user_name, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel1)
                    .addComponent(book_title, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(24, Short.MAX_VALUE))
        );

        lendings_table.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null}
            },
            new String [] {
                "id", "user_name", "book_title", "status", "amount", "start_of_lend", "end_of_lend"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Integer.class, java.lang.String.class, java.lang.String.class, java.lang.Boolean.class, java.lang.Integer.class, java.lang.String.class, java.lang.String.class
            };
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        lendings_table.getTableHeader().setReorderingAllowed(false);
        lendings_table.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lendings_tableMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(lendings_table);
        if (lendings_table.getColumnModel().getColumnCount() > 0) {
            lendings_table.getColumnModel().getColumn(0).setMinWidth(50);
            lendings_table.getColumnModel().getColumn(0).setPreferredWidth(50);
            lendings_table.getColumnModel().getColumn(0).setMaxWidth(50);
            lendings_table.getColumnModel().getColumn(3).setMinWidth(50);
            lendings_table.getColumnModel().getColumn(3).setPreferredWidth(50);
            lendings_table.getColumnModel().getColumn(3).setMaxWidth(50);
        }

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 219, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void bookActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bookActionPerformed
        // TODO add your handling code here:
        adminTambahBuku adminTambahBuku1 = new adminTambahBuku();
        adminTambahBuku1.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_bookActionPerformed

    private void user_nameActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_user_nameActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_user_nameActionPerformed

    private void user_nameKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_user_nameKeyReleased
        // TODO add your handling code here:
        searchLendingsData();
    }//GEN-LAST:event_user_nameKeyReleased

    private void book_titleKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_book_titleKeyReleased
        // TODO add your handling code here:
        searchLendingsData();
    }//GEN-LAST:event_book_titleKeyReleased

    private void lendings_tableMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lendings_tableMouseClicked
        // TODO add your handling code here:
        String clicked_id = lendings_table.getValueAt(lendings_table.getSelectedRow(), 0).toString();
        String clicked_name = lendings_table.getValueAt(lendings_table.getSelectedRow(), 1).toString();
        int confirmation = JOptionPane.showConfirmDialog(null, "Terima permintaan pinjam dari " + clicked_name + " id " + clicked_id);
        if (confirmation == 0) {
            try {
                String sql = "UPDATE lendings SET status = 2 WHERE id = " + clicked_id;
                st.executeUpdate(sql);
                JOptionPane.showMessageDialog(null, "berhasi;");
                showLendingsData();
            } catch (Exception e) {
                JOptionPane.showMessageDialog(null, e);
            }
        } else if (confirmation == 1) {
            try {
                String sql = "UPDATE lendings SET status = 0 WHERE id = " + clicked_id;
                st.executeUpdate(sql);
                JOptionPane.showMessageDialog(null, "berhasil");
                showLendingsData();
            } catch (Exception e) {
                JOptionPane.showMessageDialog(null, e);
            }
        }
    }//GEN-LAST:event_lendings_tableMouseClicked

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        adminPustakawan adminPustakawan1 = new adminPustakawan();
        adminPustakawan1.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_jButton1ActionPerformed

    private void book_titleActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_book_titleActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_book_titleActionPerformed

    private void userActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_userActionPerformed
        adminPengguna adminpenPengguna1 = new adminPengguna();
        adminpenPengguna1.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_userActionPerformed

    /**
     * @param args the command line arguments
     */
//    public static void main(String args[]) {
//        /* Set the Nimbus look and feel */
//        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
//        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
//         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
//         */
//        try {
//            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
//                if ("Nimbus".equals(info.getName())) {
//                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
//                    break;
//                }
//            }
//        } catch (ClassNotFoundException ex) {
//            java.util.logging.Logger.getLogger(adminPeminjaman.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (InstantiationException ex) {
//            java.util.logging.Logger.getLogger(adminPeminjaman.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (IllegalAccessException ex) {
//            java.util.logging.Logger.getLogger(adminPeminjaman.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
//            java.util.logging.Logger.getLogger(adminPeminjaman.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        }
//        //</editor-fold>
//
//        /* Create and display the form */
//        java.awt.EventQueue.invokeLater(new Runnable() {
//            public void run() {
//                new adminPeminjaman().setVisible(true);
//            }
//        });
//    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton book;
    private javax.swing.JTextField book_title;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable lendings_table;
    private javax.swing.JButton user;
    private javax.swing.JTextField user_name;
    // End of variables declaration//GEN-END:variables
}
