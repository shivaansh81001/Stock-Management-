/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package deskapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

/**
 *
 * @author SHIVAANSH
 */
public class balance extends javax.swing.JFrame {

    /**
     * Creates new form balance
     */
    public balance() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        r1 = new javax.swing.JRadioButton();
        r2 = new javax.swing.JRadioButton();
        t1 = new javax.swing.JTextField();
        balanceb = new javax.swing.JButton();
        bal = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setLocation(new java.awt.Point(200, 200));
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowOpened(java.awt.event.WindowEvent evt) {
                formWindowOpened(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel1.setText("balance");

        jLabel2.setText("current balance(inr)");

        buttonGroup1.add(r1);
        r1.setText("withdraw");

        buttonGroup1.add(r2);
        r2.setText("deposit");

        t1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                t1ActionPerformed(evt);
            }
        });

        balanceb.setText("calculate balance");
        balanceb.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                balancebActionPerformed(evt);
            }
        });

        bal.setEditable(false);
        bal.setFont(new java.awt.Font("Tahoma", 1, 36)); // NOI18N
        bal.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                balActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(223, 223, 223)
                        .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 138, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(28, 28, 28)
                        .addComponent(jLabel2)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(51, 51, 51)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(r1)
                                        .addGap(71, 71, 71)
                                        .addComponent(r2))
                                    .addComponent(t1, javax.swing.GroupLayout.PREFERRED_SIZE, 206, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(balanceb)))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(18, 18, 18)
                                .addComponent(bal, javax.swing.GroupLayout.PREFERRED_SIZE, 358, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                .addContainerGap(96, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 39, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(53, 53, 53)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel2)
                    .addComponent(bal, javax.swing.GroupLayout.PREFERRED_SIZE, 65, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(28, 28, 28)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(r1)
                    .addComponent(r2))
                .addGap(18, 18, 18)
                .addComponent(t1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(balanceb)
                .addContainerGap(59, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void t1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_t1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_t1ActionPerformed

    private void balancebActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_balancebActionPerformed
        String path="jdbc:mysql://localhost/";
        String place="shivam";
        String user="root";
        String password="";
        int amt=Integer.parseInt(t1.getText());
        try{
            Connection conn=(Connection)DriverManager.getConnection(path+place, user, password);
            String qy="select * from balance";
            String qy2="update balance set balance=?";
            try{
                PreparedStatement st=(PreparedStatement)conn.prepareStatement(qy);
                PreparedStatement st2=(PreparedStatement)conn.prepareStatement(qy2);
                ResultSet rst=st.executeQuery();
                
                if(rst.next()){
                int b=rst.getInt("balance");
                if(r2.isSelected()){
                    int total=b+amt;
                    
                    st2.setString(1,String.valueOf(total));
                    st2.executeUpdate();
//                    rst.getString("balance");
                }
                else if(r1.isSelected()){
                    int total=b-amt;
                    
                    st2.setString(1,String.valueOf(total));
                    st2.executeUpdate();
//                    rst.getString("balance");
                }
                
                
                }
            }
            catch(Exception e){
                JOptionPane.showMessageDialog(rootPane,"cant fetch data "+e);
            }
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(rootPane,"connection error "+e);
        }


        
        
        t1.setText("");
        buttonGroup1.clearSelection();
        this.dispose();
        balance b=new balance();
        b.setVisible(true);
        
        
    }//GEN-LAST:event_balancebActionPerformed

    private void balActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_balActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_balActionPerformed

    private void formWindowOpened(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowOpened
        // TODO add your handling code here:
        String path="jdbc:mysql://localhost/";
        String place="shivam";
        String user="root";
        String password="";
        try{
            Connection conn=(Connection)DriverManager.getConnection(path+place, user, password);
            String qy="select * from balance";
            try{
                PreparedStatement st=(PreparedStatement)conn.prepareStatement(qy);
                ResultSet rst=st.executeQuery();
                if(rst.next()){
                bal.setText(rst.getString("balance"));
                }
            }
            catch(Exception e){
                JOptionPane.showMessageDialog(rootPane,"cant fetch data "+e);
            }
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(rootPane,"connection error "+e);
        }
    }//GEN-LAST:event_formWindowOpened

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(balance.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(balance.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(balance.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(balance.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new balance().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField bal;
    public javax.swing.JButton balanceb;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    public javax.swing.JRadioButton r1;
    public javax.swing.JRadioButton r2;
    public javax.swing.JTextField t1;
    // End of variables declaration//GEN-END:variables
}
