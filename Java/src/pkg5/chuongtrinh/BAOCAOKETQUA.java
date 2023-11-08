/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package pkg5.chuongtrinh;

import java.io.FileInputStream;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Admin
 */
public class BAOCAOKETQUA extends javax.swing.JFrame {
     private ArrayList<GiaoTrinh> dsGiaoTrinh = new ArrayList<>();
     private ArrayList<GiaoTrinh> dsXuatBan = new ArrayList<>();
     private ArrayList<GiaoTrinh> dschoXuatBan = new ArrayList<>();
     private ArrayList<GiaoTrinh> dschuaDK = new ArrayList<>();
    /**
     * Creates new form BAOCAOKETQUA
     */
    public BAOCAOKETQUA() {
        initComponents();
    }
    
    public void LoadFile() {
            try {
                     //đọc file GiaoTrinh.txt
                     FileInputStream figt = new FileInputStream("GiaoTrinh.txt");
                     ObjectInputStream ingt = new ObjectInputStream(figt);
                     var resultList_gt = (ArrayList) ingt.readObject();
                     dsGiaoTrinh = resultList_gt;
                     ingt.close();
                     
                     
              } catch (Exception e) {
                     e.printStackTrace();
              }
    }
     public void LoadTable() {
              LoadFile();
              JTable table = new JTable();
              DefaultTableModel model = new DefaultTableModel();
              Object[] columnNames = {"Mã GT", "Tên GT", "Tên Môn", "Số TC", "Chủ Biên", "Tác Giả", "Khoa", "TG Bắt Đầu", "TG Kết Thúc"};
              model.setColumnIdentifiers(columnNames);
              Object[][] rowData = new Object[dsXuatBan.size()][9];
              for (int i = 0; i < dsXuatBan.size(); i++) {
                     rowData[i][0] = dsXuatBan.get(i).getMaGT();
                     rowData[i][1] = dsXuatBan.get(i).getTenGT();
                     rowData[i][2] = dsXuatBan.get(i).getTenMon().getTenMon();
                     rowData[i][3] = dsXuatBan.get(i).getTenMon().getSoTC();
                     rowData[i][4] = dsXuatBan.get(i).getChuBien().getTenGV();
                     rowData[i][5] = dsXuatBan.get(i).getCacTacGia().toString();
                     rowData[i][6] = dsXuatBan.get(i).getKhoa().getTenKhoa();
                     rowData[i][7] = dsXuatBan.get(i).getTgbd();
                     rowData[i][8] = dsXuatBan.get(i).getTgkt();
              }
              model.setDataVector(rowData, columnNames);
              this.tblGiaoTrinh.setModel(model);
              this.add(new JScrollPane(table));
              this.pack();
              this.setVisible(true);
       }
     
     
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        txttonggiaotrinh = new javax.swing.JTextField();
        txtxuatban = new javax.swing.JTextField();
        txtchoxuatban = new javax.swing.JTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblGiaoTrinh = new javax.swing.JTable();
        jLabel6 = new javax.swing.JLabel();
        btnBaoCao = new javax.swing.JButton();
        btnQuayLai = new javax.swing.JButton();
        jLabel5 = new javax.swing.JLabel();
        txtchuaDK = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel1.setText("Báo cáo kết quả");

        jLabel2.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel2.setText("Tổng số giáo trình trong kế hoạch");

        jLabel3.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel3.setText("Tổng số giáo trình đã xuất bản");

        jLabel4.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel4.setText("Tổng số giáo trình chờ xuất bản");

        tblGiaoTrinh.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null}
            },
            new String [] {
                "Mã GT", "Tên GT", "Tên Môn", "Số TC", "Chủ Biên", "Các tác giả", "Khoa", "TG bắt đầu", "TG kết thúc"
            }
        ));
        jScrollPane1.setViewportView(tblGiaoTrinh);

        jLabel6.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel6.setText("Các giáo trình đã xuất bản:");

        btnBaoCao.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        btnBaoCao.setText("Báo Cáo");
        btnBaoCao.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnBaoCaoActionPerformed(evt);
            }
        });

        btnQuayLai.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        btnQuayLai.setText("Quay lại");
        btnQuayLai.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnQuayLaiActionPerformed(evt);
            }
        });

        jLabel5.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel5.setText("Tổng số giáo trình chưa đăng kí");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(15, 15, 15)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 157, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, 238, Short.MAX_VALUE)
                            .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, 238, Short.MAX_VALUE)
                            .addComponent(jLabel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addGap(65, 65, 65)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(txtxuatban, javax.swing.GroupLayout.DEFAULT_SIZE, 72, Short.MAX_VALUE)
                            .addComponent(txttonggiaotrinh, javax.swing.GroupLayout.DEFAULT_SIZE, 72, Short.MAX_VALUE)
                            .addComponent(txtchoxuatban, javax.swing.GroupLayout.DEFAULT_SIZE, 72, Short.MAX_VALUE)
                            .addComponent(txtchuaDK)))
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jLabel6))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(110, 110, 110)
                        .addComponent(btnBaoCao, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(278, 278, 278)
                        .addComponent(btnQuayLai, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 805, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(31, 196, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(17, 17, 17)
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(7, 7, 7)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txttonggiaotrinh, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(3, 3, 3)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtxuatban, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtchoxuatban, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtchuaDK, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(30, 30, 30)
                .addComponent(jLabel6, javax.swing.GroupLayout.DEFAULT_SIZE, 22, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 172, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnBaoCao, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnQuayLai, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(50, 50, 50))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnBaoCaoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnBaoCaoActionPerformed
        LoadFile();
        
        int slgiaotrinh = dsGiaoTrinh.size();
        txttonggiaotrinh.setText(Integer.toString(slgiaotrinh));
        
        for(GiaoTrinh gt : dsGiaoTrinh){
            if(gt.isDangKy()== true && gt.isXuatBan()==true){
                dsXuatBan.add(gt);
            }
        }
        int slXuatBan = dsXuatBan.size();
        txtxuatban.setText(Integer.toString(slXuatBan));
        for(GiaoTrinh gt : dsGiaoTrinh){
            if(gt.isDangKy()== true && gt.isXuatBan()==false && gt.getBienSoan().isEmpty()==false){
                dschoXuatBan.add(gt);
            }
        }
        int slchoXuatBan = dschoXuatBan.size();
        txtchoxuatban.setText(Integer.toString(slchoXuatBan));
         for(GiaoTrinh gt : dsGiaoTrinh){
            if(gt.isDangKy()== false ){
                dschuaDK.add(gt);
            }
        }
        int slchuaDK = dschuaDK.size();
        txtchuaDK.setText(Integer.toString(slchuaDK));
        
        LoadTable();
    }//GEN-LAST:event_btnBaoCaoActionPerformed

    private void btnQuayLaiActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnQuayLaiActionPerformed
        setVisible(false);
        Menu mainMenu = new Menu();
        mainMenu.setVisible(true);
    }//GEN-LAST:event_btnQuayLaiActionPerformed

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
            java.util.logging.Logger.getLogger(BAOCAOKETQUA.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(BAOCAOKETQUA.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(BAOCAOKETQUA.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(BAOCAOKETQUA.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new BAOCAOKETQUA().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnBaoCao;
    private javax.swing.JButton btnQuayLai;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable tblGiaoTrinh;
    private javax.swing.JTextField txtchoxuatban;
    private javax.swing.JTextField txtchuaDK;
    private javax.swing.JTextField txttonggiaotrinh;
    private javax.swing.JTextField txtxuatban;
    // End of variables declaration//GEN-END:variables
}
