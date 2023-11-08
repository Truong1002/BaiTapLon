/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package pkg5.chuongtrinh;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import javax.swing.DefaultComboBoxModel;
import javax.swing.DefaultListModel;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author ADMIN
 */
public class QL_ThongTinGT extends javax.swing.JFrame {

       private ArrayList<GiaoTrinh> dsGiaoTrinh = new ArrayList<>();
       private ArrayList<Khoa> dsKhoa = new ArrayList<>();
       private ArrayList<GiangVien> dsGiangVien = new ArrayList<>();

       /**
        * Creates new form QL_ThongTinGT
        */
       public QL_ThongTinGT() {
              initComponents();
              LoadCombo();
       }

       public void LoadFile() {
              try {
                     //đọc file GiaoTrinh.txt
                     FileInputStream figt = new FileInputStream("GiaoTrinh.txt");
                     ObjectInputStream ingt = new ObjectInputStream(figt);
                     var resultList_gt = (ArrayList) ingt.readObject();
                     dsGiaoTrinh = resultList_gt;
                     ingt.close();
                     //đọc file Khoa.txt
                     FileInputStream fik = new FileInputStream("Khoa.txt");
                     ObjectInputStream ink = new ObjectInputStream(fik);
                     var resultList_k = (ArrayList) ink.readObject();
                     dsKhoa = resultList_k;
                     ink.close();
                     //đọc file GiangVien.txt
                     FileInputStream figv = new FileInputStream("GiangVien.txt");
                     ObjectInputStream ingv = new ObjectInputStream(figv);
                     var resultList_gv = (ArrayList) ingv.readObject();
                     dsGiangVien = resultList_gv;
                     ingv.close();
              } catch (Exception e) {
                     e.printStackTrace();
              }
       }

       public void LoadCombo() {
              ArrayList<GiangVien> dsgvk = new ArrayList<>();
              LoadFile();
              cboKhoa.setModel(new DefaultComboBoxModel(dsKhoa.toArray()));
//              cboChuBien.setModel(new DefaultComboBoxModel(dsGiangVien.toArray()));
//              
//              DefaultListModel<String> model = new DefaultListModel<>();
//              for (GiangVien x : dsGiangVien) {
//                     model.addElement(x.getTenGV());
//              }
//              //var list = new JList<String>(model);
//              listCacTacGia.setModel(model);

              for (GiangVien x : dsGiangVien) {
                     if (x.getKhoa().getTenKhoa().toLowerCase().equals(cboKhoa.getSelectedItem().toString().toLowerCase())) {
                            dsgvk.add(x);
                     }
              }
              cboChuBien.setModel(new DefaultComboBoxModel(dsgvk.toArray()));

              DefaultListModel<GiangVien> model = new DefaultListModel<>();
              for (GiangVien x : dsGiangVien) {
                     if (x.getKhoa().getTenKhoa().toLowerCase().equals(cboKhoa.getSelectedItem().toString().toLowerCase())) {
                            model.addElement(x);
                     }

              }
//              var list = new JList<String>(model);
              listCacTacGia.setModel(model);
       }

       public void LoadTable() {
              LoadFile();
              JTable table = new JTable();
              DefaultTableModel model = new DefaultTableModel();
              Object[] columnNames = {"Mã GT", "Tên GT", "Tên Môn", "Số TC", "Chủ Biên", "Tác Giả", "Khoa", "TG Bắt Đầu", "TG Kết Thúc"};
              model.setColumnIdentifiers(columnNames);
              Object[][] rowData = new Object[dsGiaoTrinh.size()][10];
              for (int i = 0; i < dsGiaoTrinh.size(); i++) {
                     rowData[i][0] = dsGiaoTrinh.get(i).getMaGT();
                     rowData[i][1] = dsGiaoTrinh.get(i).getTenGT();
                     rowData[i][2] = dsGiaoTrinh.get(i).getTenMon().getTenMon();
                     rowData[i][3] = dsGiaoTrinh.get(i).getTenMon().getSoTC();
                     rowData[i][4] = dsGiaoTrinh.get(i).getChuBien().getTenGV();
                     rowData[i][5] = dsGiaoTrinh.get(i).getCacTacGia().toString();
                     rowData[i][6] = dsGiaoTrinh.get(i).getKhoa().getTenKhoa();
                     rowData[i][7] = dsGiaoTrinh.get(i).getTgbd();
                     rowData[i][8] = dsGiaoTrinh.get(i).getTgkt();
                     rowData[i][9] = dsGiaoTrinh.get(i).isDangKy();
              }
              model.setDataVector(rowData, columnNames);
              this.tblGiaoTrinh.setModel(model);
              this.add(new JScrollPane(table));
              this.pack();
              this.setVisible(true);
       }

       /**
        * This method is called from within the constructor to initialize the form. WARNING: Do NOT
        * modify this code. The content of this method is always regenerated by the Form Editor.
        */
       @SuppressWarnings("unchecked")
       // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
       private void initComponents() {

              jLabel1 = new javax.swing.JLabel();
              jScrollPane1 = new javax.swing.JScrollPane();
              tblGiaoTrinh = new javax.swing.JTable();
              jLabel2 = new javax.swing.JLabel();
              jLabel3 = new javax.swing.JLabel();
              txtMaGT = new javax.swing.JTextField();
              jLabel4 = new javax.swing.JLabel();
              txtTenGT = new javax.swing.JTextField();
              jLabel5 = new javax.swing.JLabel();
              txtTenMon = new javax.swing.JTextField();
              jLabel6 = new javax.swing.JLabel();
              txtSoTC = new javax.swing.JTextField();
              jLabel7 = new javax.swing.JLabel();
              jLabel8 = new javax.swing.JLabel();
              jLabel9 = new javax.swing.JLabel();
              jLabel10 = new javax.swing.JLabel();
              txtTGBD = new javax.swing.JTextField();
              jLabel11 = new javax.swing.JLabel();
              txtTGKT = new javax.swing.JTextField();
              btnThem = new javax.swing.JButton();
              btnSua = new javax.swing.JButton();
              btnXoa = new javax.swing.JButton();
              btnQuayLai = new javax.swing.JButton();
              cboChuBien = new javax.swing.JComboBox<>();
              cboKhoa = new javax.swing.JComboBox<>();
              jScrollPane2 = new javax.swing.JScrollPane();
              listCacTacGia = new javax.swing.JList<>();
              btnTimKiem = new javax.swing.JButton();

              setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
              setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));

              jLabel1.setFont(new java.awt.Font("Segoe UI", 1, 22)); // NOI18N
              jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
              jLabel1.setText("QUẢN LÝ THÔNG TIN GIÁO TRÌNH");

              tblGiaoTrinh.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
              tblGiaoTrinh.setModel(new javax.swing.table.DefaultTableModel(
                     new Object [][] {
                            {null, null, null, null, null, null, null, null, null},
                            {null, null, null, null, null, null, null, null, null},
                            {null, null, null, null, null, null, null, null, null},
                            {null, null, null, null, null, null, null, null, null}
                     },
                     new String [] {
                            "Mã GT", "Tên GT", "Tên môn", "Số TC", "Chủ biên", "Các tác giả", "Khoa", "Thời gian BĐ", "Thời gian KT"
                     }
              ) {
                     Class[] types = new Class [] {
                            java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.Integer.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class
                     };

                     public Class getColumnClass(int columnIndex) {
                            return types [columnIndex];
                     }
              });
              tblGiaoTrinh.addAncestorListener(new javax.swing.event.AncestorListener() {
                     public void ancestorAdded(javax.swing.event.AncestorEvent evt) {
                            tblGiaoTrinhAncestorAdded(evt);
                     }
                     public void ancestorMoved(javax.swing.event.AncestorEvent evt) {
                     }
                     public void ancestorRemoved(javax.swing.event.AncestorEvent evt) {
                     }
              });
              tblGiaoTrinh.addMouseListener(new java.awt.event.MouseAdapter() {
                     public void mouseClicked(java.awt.event.MouseEvent evt) {
                            tblGiaoTrinhMouseClicked(evt);
                     }
              });
              jScrollPane1.setViewportView(tblGiaoTrinh);

              jLabel2.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
              jLabel2.setText("Danh sách giáo trình");

              jLabel3.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
              jLabel3.setText("Mã giáo trình");

              txtMaGT.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N

              jLabel4.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
              jLabel4.setText("Tên giáo trình");

              txtTenGT.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N

              jLabel5.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
              jLabel5.setText("Tên môn");

              txtTenMon.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N

              jLabel6.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
              jLabel6.setText("Số tín chỉ");

              txtSoTC.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N

              jLabel7.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
              jLabel7.setText("Chủ biên");

              jLabel8.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
              jLabel8.setText("Các tác giả");

              jLabel9.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
              jLabel9.setText("Khoa");

              jLabel10.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
              jLabel10.setText("Thời gian bắt đầu");

              txtTGBD.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N

              jLabel11.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
              jLabel11.setText("Thời gian kết thúc");

              txtTGKT.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N

              btnThem.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
              btnThem.setText("Thêm");
              btnThem.addActionListener(new java.awt.event.ActionListener() {
                     public void actionPerformed(java.awt.event.ActionEvent evt) {
                            btnThemActionPerformed(evt);
                     }
              });

              btnSua.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
              btnSua.setText("Sửa");
              btnSua.addActionListener(new java.awt.event.ActionListener() {
                     public void actionPerformed(java.awt.event.ActionEvent evt) {
                            btnSuaActionPerformed(evt);
                     }
              });

              btnXoa.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
              btnXoa.setText("Xóa");
              btnXoa.addActionListener(new java.awt.event.ActionListener() {
                     public void actionPerformed(java.awt.event.ActionEvent evt) {
                            btnXoaActionPerformed(evt);
                     }
              });

              btnQuayLai.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
              btnQuayLai.setText("Quay lại");
              btnQuayLai.addActionListener(new java.awt.event.ActionListener() {
                     public void actionPerformed(java.awt.event.ActionEvent evt) {
                            btnQuayLaiActionPerformed(evt);
                     }
              });

              cboKhoa.addItemListener(new java.awt.event.ItemListener() {
                     public void itemStateChanged(java.awt.event.ItemEvent evt) {
                            cboKhoaItemStateChanged(evt);
                     }
              });

              jScrollPane2.setViewportView(listCacTacGia);

              btnTimKiem.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
              btnTimKiem.setText("Tìm Kiếm");
              btnTimKiem.setActionCommand("Tìm Kiếm");
              btnTimKiem.addActionListener(new java.awt.event.ActionListener() {
                     public void actionPerformed(java.awt.event.ActionEvent evt) {
                            btnTimKiemActionPerformed(evt);
                     }
              });

              javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
              getContentPane().setLayout(layout);
              layout.setHorizontalGroup(
                     layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                     .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                            .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 240, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(807, 807, 807))
                     .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                   .addGroup(layout.createSequentialGroup()
                                          .addGap(332, 332, 332)
                                          .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 383, javax.swing.GroupLayout.PREFERRED_SIZE))
                                   .addGroup(layout.createSequentialGroup()
                                          .addGap(122, 122, 122)
                                          .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                 .addGroup(layout.createSequentialGroup()
                                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                               .addGroup(layout.createSequentialGroup()
                                                                      .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                                      .addGap(42, 42, 42)
                                                                      .addComponent(txtTenGT, javax.swing.GroupLayout.PREFERRED_SIZE, 259, javax.swing.GroupLayout.PREFERRED_SIZE))
                                                               .addGroup(layout.createSequentialGroup()
                                                                      .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                                      .addGap(42, 42, 42)
                                                                      .addComponent(txtMaGT, javax.swing.GroupLayout.PREFERRED_SIZE, 259, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                                        .addComponent(btnThem, javax.swing.GroupLayout.PREFERRED_SIZE, 109, javax.swing.GroupLayout.PREFERRED_SIZE))
                                                 .addGroup(layout.createSequentialGroup()
                                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                               .addGroup(layout.createSequentialGroup()
                                                                      .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                                      .addGap(42, 42, 42)
                                                                      .addComponent(txtTenMon, javax.swing.GroupLayout.PREFERRED_SIZE, 259, javax.swing.GroupLayout.PREFERRED_SIZE))
                                                               .addGroup(layout.createSequentialGroup()
                                                                      .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                                      .addGap(42, 42, 42)
                                                                      .addComponent(txtSoTC, javax.swing.GroupLayout.PREFERRED_SIZE, 259, javax.swing.GroupLayout.PREFERRED_SIZE))
                                                               .addGroup(layout.createSequentialGroup()
                                                                      .addComponent(jLabel11, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                                      .addGap(42, 42, 42)
                                                                      .addComponent(txtTGKT, javax.swing.GroupLayout.PREFERRED_SIZE, 259, javax.swing.GroupLayout.PREFERRED_SIZE))
                                                               .addGroup(layout.createSequentialGroup()
                                                                      .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                                      .addGap(42, 42, 42)
                                                                      .addComponent(cboChuBien, javax.swing.GroupLayout.PREFERRED_SIZE, 259, javax.swing.GroupLayout.PREFERRED_SIZE))
                                                               .addGroup(layout.createSequentialGroup()
                                                                      .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                                             .addComponent(jLabel9, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                                             .addComponent(jLabel8, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE))
                                                                      .addGap(42, 42, 42)
                                                                      .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                                             .addComponent(cboKhoa, javax.swing.GroupLayout.PREFERRED_SIZE, 259, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                                             .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 259, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                                               .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                                                      .addComponent(jLabel10, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                                      .addGap(42, 42, 42)
                                                                      .addComponent(txtTGBD, javax.swing.GroupLayout.PREFERRED_SIZE, 259, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                                               .addComponent(btnSua, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                                               .addComponent(btnXoa, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                                               .addComponent(btnQuayLai, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                                               .addComponent(btnTimKiem, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))))
                            .addGap(115, 115, 115))
                     .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                            .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 1076, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
              );
              layout.setVerticalGroup(
                     layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                     .addGroup(layout.createSequentialGroup()
                            .addContainerGap()
                            .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(26, 26, 26)
                            .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 27, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 223, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                   .addGroup(layout.createSequentialGroup()
                                          .addGap(45, 45, 45)
                                          .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                                 .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                 .addComponent(txtMaGT, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                          .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                          .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                                 .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                 .addComponent(txtTenGT, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                          .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                          .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                                 .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                 .addComponent(txtTenMon, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                          .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                          .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                                 .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                 .addComponent(txtSoTC, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                   .addGroup(layout.createSequentialGroup()
                                          .addGap(65, 65, 65)
                                          .addComponent(btnThem, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                                          .addGap(40, 40, 40)
                                          .addComponent(btnSua, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                   .addGroup(layout.createSequentialGroup()
                                          .addComponent(btnXoa, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                                          .addGap(32, 32, 32)
                                          .addComponent(btnTimKiem, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                                          .addGap(35, 35, 35)
                                          .addComponent(btnQuayLai, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE))
                                   .addGroup(layout.createSequentialGroup()
                                          .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                                 .addComponent(jLabel9, javax.swing.GroupLayout.DEFAULT_SIZE, 37, Short.MAX_VALUE)
                                                 .addComponent(cboKhoa, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                          .addGap(14, 14, 14)
                                          .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                                 .addComponent(jLabel7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                                 .addComponent(cboChuBien, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                          .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                 .addGroup(layout.createSequentialGroup()
                                                        .addGap(18, 18, 18)
                                                        .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 82, javax.swing.GroupLayout.PREFERRED_SIZE))
                                                 .addGroup(layout.createSequentialGroup()
                                                        .addGap(41, 41, 41)
                                                        .addComponent(jLabel8, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                          .addGap(18, 18, 18)
                                          .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                                 .addComponent(jLabel10, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                 .addComponent(txtTGBD, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                          .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                          .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                                 .addComponent(jLabel11, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                 .addComponent(txtTGKT, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))))
                            .addGap(32, 55, Short.MAX_VALUE))
              );

              pack();
              setLocationRelativeTo(null);
       }// </editor-fold>//GEN-END:initComponents

       private void tblGiaoTrinhAncestorAdded(javax.swing.event.AncestorEvent evt) {//GEN-FIRST:event_tblGiaoTrinhAncestorAdded
              // TODO add your handling code here:
              LoadTable();
       }//GEN-LAST:event_tblGiaoTrinhAncestorAdded

       private void tblGiaoTrinhMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tblGiaoTrinhMouseClicked
              // TODO add your handling code here:
              LoadFile();
              int dongchon = tblGiaoTrinh.getSelectedRow();
              if (dongchon != -1) {
                     GiaoTrinh gt = new GiaoTrinh();
                     gt = dsGiaoTrinh.get(dongchon);
                     txtMaGT.setText(gt.getMaGT());
                     txtTenGT.setText(gt.getTenGT());
                     txtTenMon.setText(gt.getTenMon().getTenMon());
                     txtSoTC.setText(Integer.toString(gt.getTenMon().getSoTC()));
                     int i;
                     for (i = 0; i < dsKhoa.size(); i++) {
                            if (dsKhoa.get(i).getTenKhoa().toLowerCase().equals(gt.getKhoa().getTenKhoa().toLowerCase())) {
                                   cboKhoa.setSelectedIndex(i);
                                   break;
                            }
                     }
                     ArrayList<GiangVien> dsgvk = new ArrayList<>();
                     for (GiangVien x : dsGiangVien) {
                            if (x.getKhoa().getTenKhoa().toLowerCase().equals(cboKhoa.getSelectedItem().toString().toLowerCase())) {
                                   dsgvk.add(x);
                            }
                     }
                     int j;
                     for (j = 0; j < dsgvk.size(); j++) {
                            if (dsgvk.get(j).getTenGV().toLowerCase().equals(gt.getChuBien().getTenGV().toLowerCase())) {
                                   cboChuBien.setSelectedIndex(j);
                                   break;
                            }
                     }
                     ArrayList<GiangVien> cactg = new ArrayList<>();
                     cactg = gt.getCacTacGia();
                     DefaultListModel<GiangVien> model = new DefaultListModel<>();
                     for (GiangVien x : cactg) {
                            model.addElement(x);
                     }
                     listCacTacGia.setModel(model);
                     txtTGBD.setText(gt.getTgbd().toString());
                     txtTGKT.setText(gt.getTgkt().toString());
              }
       }//GEN-LAST:event_tblGiaoTrinhMouseClicked

       private void btnThemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnThemActionPerformed
              // TODO add your handling code here:
              if (check()) {
                     MonHoc mh = new MonHoc();
                     GiangVien cb = new GiangVien();
                     ArrayList<GiangVien> cactg = new ArrayList<>();
                     Khoa k = new Khoa();
                     mh.setTenMon(txtTenMon.getText());
                     int sotc = Integer.parseInt(txtSoTC.getText());
                     mh.setSoTC(sotc);
                     for (Khoa x : dsKhoa) {
                            if (x.getTenKhoa().toLowerCase().equals(cboKhoa.getSelectedItem().toString().toLowerCase())) {
                                   k = x;
                            }
                     }
//                     k.setTenKhoa(cboKhoa.getSelectedItem().toString());
                     for (GiangVien x : dsGiangVien) {
                            if (x.getTenGV().toLowerCase().equals(cboChuBien.getSelectedItem().toString().toLowerCase())) {
                                   cb = x;
                            }
                     }
//                     cb.setTenGV(cboChuBien.getSelectedItem().toString());
                    if (listCacTacGia.getSelectedIndex() >= 0) {
                     ArrayList<GiangVien> listTG = (ArrayList<GiangVien>) listCacTacGia.getSelectedValuesList();
                     for (GiangVien x : dsGiangVien) {
                            for (GiangVien y : listTG) {
                                   if (x.getTenGV().toLowerCase().equals(y.getTenGV().toLowerCase())) {
                                          cactg.add(y);
                                   }
                            }
                     }
                     
                     Date dbd = new Date();
                     String ngaybd = txtTGBD.getText();
                     String[] bd = ngaybd.split("/");
                     dbd.setD(Integer.parseInt(bd[0]));
                     dbd.setM(Integer.parseInt(bd[1]));
                     dbd.setY(Integer.parseInt(bd[2]));
                     Date dkt = new Date();
                     String ngaykt = txtTGKT.getText();
                     String[] kt = ngaykt.split("/");
                     dkt.setD(Integer.parseInt(kt[0]));
                     dkt.setM(Integer.parseInt(kt[1]));
                     dkt.setY(Integer.parseInt(kt[2]));
                     dsGiaoTrinh.add(new GiaoTrinh(txtMaGT.getText(), txtTenGT.getText(), mh, cb, cactg, k, dbd, dkt));
                     try {
                            FileOutputStream fo = new FileOutputStream("GIAOTRINH.txt");
                            ObjectOutputStream out = new ObjectOutputStream(fo);
                            out.writeObject(dsGiaoTrinh);
                            out.close();
                            fo.close();
                     } catch (FileNotFoundException e) {
                            e.printStackTrace();
                     } catch (IOException e) {
                            e.printStackTrace();
                     }
                     LoadTable();
                     JOptionPane.showMessageDialog(rootPane, "Thêm thành công!");
                     } else {
                            JOptionPane.showMessageDialog(rootPane, "Chọn danh sách các tác giả!");
                     }
              }
       }//GEN-LAST:event_btnThemActionPerformed

       private void cboKhoaItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cboKhoaItemStateChanged
              // TODO add your handling code here:
              ArrayList<GiangVien> dsgvk = new ArrayList<>();
              for (GiangVien x : dsGiangVien) {
                     if (x.getKhoa().getTenKhoa().toLowerCase().equals(cboKhoa.getSelectedItem().toString().toLowerCase())) {
                            dsgvk.add(x);
                     }
              }
              cboChuBien.setModel(new DefaultComboBoxModel(dsgvk.toArray()));

              DefaultListModel<GiangVien> model = new DefaultListModel<>();
              for (GiangVien x : dsGiangVien) {
                     if (x.getKhoa().getTenKhoa().toLowerCase().equals(cboKhoa.getSelectedItem().toString().toLowerCase())) {
                            model.addElement(x);
                     }

              }
//              var list = new JList<String>(model);
              listCacTacGia.setModel(model);
       }//GEN-LAST:event_cboKhoaItemStateChanged

       private void btnXoaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnXoaActionPerformed
              // TODO add your handling code here:
              LoadFile();
              int dongchon = tblGiaoTrinh.getSelectedRow();
              if (dongchon != -1) {
//                     for (GiaoTrinh x : dsGiaoTrinh) {
//                            if (txtMa.getText().equals(x.getMaGT())) {
//                                   dsGiaoTrinh.remove(x);
//                            }
//                     }
                     Iterator<GiaoTrinh> itr = dsGiaoTrinh.iterator();
                     while (itr.hasNext()) {
                            GiaoTrinh gt = itr.next();
                            if (txtMaGT.getText().equals(gt.getMaGT())) {
                                   itr.remove();
                            }
                     }
                     try {
                            FileOutputStream fo = new FileOutputStream("GIAOTRINH.txt");
                            ObjectOutputStream out = new ObjectOutputStream(fo);
                            out.writeObject(dsGiaoTrinh);
                            out.close();
                            fo.close();
                     } catch (FileNotFoundException e) {
                            e.printStackTrace();
                     } catch (IOException e) {
                            e.printStackTrace();
                     }
                     LoadTable();
                     JOptionPane.showMessageDialog(rootPane, "Xóa thành công!");
              } else {
                     JOptionPane.showMessageDialog(rootPane, "Chọn dòng cần xóa");
              }
       }//GEN-LAST:event_btnXoaActionPerformed

       private void btnSuaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSuaActionPerformed
              // TODO add your handling code here:
              LoadFile();

              int dongchon = tblGiaoTrinh.getSelectedRow();
              if (dongchon != -1) {
                     if (checksua()) {
                            MonHoc mh = new MonHoc();
                            GiangVien cb = new GiangVien();
                            ArrayList<GiangVien> cactg = new ArrayList<>();
                            Khoa k = new Khoa();
                            mh.setTenMon(txtTenMon.getText());
                            int sotc = Integer.parseInt(txtSoTC.getText());
                            mh.setSoTC(sotc);
                            for (Khoa x : dsKhoa) {
                                   if (x.getTenKhoa().toLowerCase().equals(cboKhoa.getSelectedItem().toString().toLowerCase())) {
                                          k = x;
                                   }
                            }
                            for (GiangVien x : dsGiangVien) {
                                   if (x.getTenGV().toLowerCase().equals(cboChuBien.getSelectedItem().toString().toLowerCase())) {
                                          cb = x;
                                   }
                            }
                            if (listCacTacGia.getSelectedIndex() >= 0) {
                                   ArrayList<GiangVien> listTG = (ArrayList<GiangVien>) listCacTacGia.getSelectedValuesList();
                                   for (GiangVien x : dsGiangVien) {
                                          for (GiangVien y : listTG) {
                                                 if (x.getTenGV().toLowerCase().equals(y.getTenGV().toLowerCase())) {
                                                        cactg.add(y);
                                                 }
                                          }
                                   }

                            } else {
                                   GiaoTrinh gt = new GiaoTrinh();
                                   gt = dsGiaoTrinh.get(dongchon);
                                   cactg = gt.getCacTacGia();

                            }

                            Date dbd = new Date();
                            String ngaybd = txtTGBD.getText();
                            String[] bd = ngaybd.split("/");
                            dbd.setD(Integer.parseInt(bd[0]));
                            dbd.setM(Integer.parseInt(bd[1]));
                            dbd.setY(Integer.parseInt(bd[2]));
                            Date dkt = new Date();
                            String ngaykt = txtTGKT.getText();
                            String[] kt = ngaykt.split("/");
                            dkt.setD(Integer.parseInt(kt[0]));
                            dkt.setM(Integer.parseInt(kt[1]));
                            dkt.setY(Integer.parseInt(kt[2]));
                            dsGiaoTrinh.set(dongchon, new GiaoTrinh(txtMaGT.getText(), txtTenGT.getText(), mh, cb, cactg, k, dbd, dkt));
                            try {
                                   FileOutputStream fo = new FileOutputStream("GIAOTRINH.txt");
                                   ObjectOutputStream out = new ObjectOutputStream(fo);
                                   out.writeObject(dsGiaoTrinh);
                                   out.close();
                                   fo.close();
                            } catch (FileNotFoundException e) {
                                   e.printStackTrace();
                            } catch (IOException e) {
                                   e.printStackTrace();
                            }
                            LoadTable();
                            JOptionPane.showMessageDialog(rootPane, "Sửa thành công!");
                     }

              } else {
                     JOptionPane.showMessageDialog(rootPane, "Chọn giáo trình cần sửa!");
              }
       }//GEN-LAST:event_btnSuaActionPerformed

    private void btnQuayLaiActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnQuayLaiActionPerformed
           setVisible(false);
           Menu mainMenu = new Menu();
           mainMenu.setVisible(true);
    }//GEN-LAST:event_btnQuayLaiActionPerformed

       private void btnTimKiemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnTimKiemActionPerformed
              // TODO add your handling code here:
              String maGT = txtMaGT.getText();
              String tenGT = txtTenGT.getText();
              if (maGT.isEmpty() && tenGT.isEmpty()) {
                     JOptionPane.showMessageDialog(rootPane, "Nhập mã hoặc tên giáo trình cần tìm!");
              } else {
                     if (tenGT.isEmpty()) {
                            boolean check = false;
                            for (GiaoTrinh item : dsGiaoTrinh) {
                                   if (item.getMaGT().toLowerCase().equals(maGT.toLowerCase())) {
                                          check = true;
                                          break;
                                   }
                            }
                            if (!check) {
                                   JOptionPane.showMessageDialog(rootPane, "Không tồn tại giáo trình có mã cần tìm!");
                            } else {
                                   ArrayList<GiaoTrinh> ds = new ArrayList<GiaoTrinh>();
                                   for (GiaoTrinh item : dsGiaoTrinh) {
                                          if (item.getMaGT().toLowerCase().equals(maGT.toLowerCase())) {
                                                 ds.add(item);
                                          }
                                   }
                                   JTable table = new JTable();
                                   DefaultTableModel model = new DefaultTableModel();
                                   Object[] columnNames = {"Mã GT", "Tên GT", "Tên Môn", "Số TC", "Chủ Biên", "Tác Giả", "Khoa", "TG Bắt Đầu", "TG Kết Thúc"};
                                   model.setColumnIdentifiers(columnNames);
                                   Object[][] rowData = new Object[ds.size()][10];
                                   for (int i = 0; i < ds.size(); i++) {
                                          rowData[i][0] = ds.get(i).getMaGT();
                                          rowData[i][1] = ds.get(i).getTenGT();
                                          rowData[i][2] = ds.get(i).getTenMon().getTenMon();
                                          rowData[i][3] = ds.get(i).getTenMon().getSoTC();
                                          rowData[i][4] = ds.get(i).getChuBien().getTenGV();
                                          rowData[i][5] = ds.get(i).getCacTacGia().toString();
                                          rowData[i][6] = ds.get(i).getKhoa().getTenKhoa();
                                          rowData[i][7] = ds.get(i).getTgbd();
                                   }
                                   model.setDataVector(rowData, columnNames);
                                   this.tblGiaoTrinh.setModel(model);
                                   this.add(new JScrollPane(table));
                                   this.pack();
                                   this.setVisible(true);
                            }
                     } else {
                            boolean check = false;
                            for (GiaoTrinh item : dsGiaoTrinh) {
                                   if (item.getTenGT().toLowerCase().contains(tenGT.toLowerCase())) {
                                          check = true;
                                          break;
                                   }
                            }
                            if (!check) {
                                   JOptionPane.showMessageDialog(rootPane, "Không tồn tại giáo trình có tên cần tìm!");
                            } else {
                                   ArrayList<GiaoTrinh> ds = new ArrayList<GiaoTrinh>();
                                   for (GiaoTrinh item : dsGiaoTrinh) {
                                          if (item.getTenGT().toLowerCase().contains(tenGT.toLowerCase())) {
                                                 ds.add(item);
                                          }
                                   }
                                   JTable table = new JTable();
                                   DefaultTableModel model = new DefaultTableModel();
                                   Object[] columnNames = {"Mã GT", "Tên GT", "Tên Môn", "Số TC", "Chủ Biên", "Tác Giả", "Khoa", "TG Bắt Đầu", "TG Kết Thúc"};
                                   model.setColumnIdentifiers(columnNames);
                                   Object[][] rowData = new Object[ds.size()][10];
                                   for (int i = 0; i < ds.size(); i++) {
                                          rowData[i][0] = ds.get(i).getMaGT();
                                          rowData[i][1] = ds.get(i).getTenGT();
                                          rowData[i][2] = ds.get(i).getTenMon().getTenMon();
                                          rowData[i][3] = ds.get(i).getTenMon().getSoTC();
                                          rowData[i][4] = ds.get(i).getChuBien().getTenGV();
                                          rowData[i][5] = ds.get(i).getCacTacGia().toString();
                                          rowData[i][6] = ds.get(i).getKhoa().getTenKhoa();
                                          rowData[i][7] = ds.get(i).getTgbd();
                                          rowData[i][8] = ds.get(i).getTgkt();
                                   }
                                   model.setDataVector(rowData, columnNames);
                                   this.tblGiaoTrinh.setModel(model);
                                   this.add(new JScrollPane(table));
                                   this.pack();
                                   this.setVisible(true);
                            }
                     }
              }
       }//GEN-LAST:event_btnTimKiemActionPerformed

       private boolean checksua() {
              int dongchon = tblGiaoTrinh.getSelectedRow();
              GiaoTrinh gt = new GiaoTrinh();
              gt = dsGiaoTrinh.get(dongchon);
              if (gt.getMaGT().toLowerCase().equals(txtMaGT.getText().toLowerCase()) != true) {
                     JOptionPane.showMessageDialog(rootPane, "Không được sửa mã giáo trình");
                     return false;
              }
              if ("".equals(txtMaGT.getText())) {
                     JOptionPane.showMessageDialog(rootPane, "Cần nhập đủ thông tin");
                     return false;
              }
              if ("".equals(txtTenGT.getText())) {
                     JOptionPane.showMessageDialog(rootPane, "Cần nhập đủ thông tin");
                     return false;
              }
              if ("".equals(txtTenMon.getText())) {
                     JOptionPane.showMessageDialog(rootPane, "Cần nhập đủ thông tin");
                     return false;
              }
              if ("".equals(txtSoTC.getText())) {
                     JOptionPane.showMessageDialog(rootPane, "Cần nhập đủ thông tin");
                     return false;
              } else {
                     try {
                            int sotc = Integer.parseInt(txtSoTC.getText());
                     } catch (NumberFormatException e) {
                            JOptionPane.showMessageDialog(rootPane, "Số tín chỉ phải là số");
                            return false;
                     }
              }

              if ("".equals(txtTGBD.getText())) {
                     JOptionPane.showMessageDialog(rootPane, "Cần nhập đủ thông tin");
                     return false;
              } else {
                     try {
                            java.util.Date s = new SimpleDateFormat("dd/MM/yyyy").parse(txtTGBD.getText());
                     } catch (Exception e) {
                            e.printStackTrace();
                            JOptionPane.showMessageDialog(rootPane, "Ngày bắt đâu cần nhập đúng định dạng dd/MM/yyyy");
                            return false;
                     }
              }
              if ("".equals(txtTGKT.getText())) {
                     JOptionPane.showMessageDialog(rootPane, "Cần nhập đủ thông tin");
                     return false;
              } else {
                     try {
                            java.util.Date s = new SimpleDateFormat("dd/MM/yyyy").parse(txtTGBD.getText());
                     } catch (Exception e) {
                            e.printStackTrace();
                            JOptionPane.showMessageDialog(rootPane, "Ngày kêt thúc cần nhập đúng định dạng dd/MM/yyyy");
                            return false;
                     }
              }
              return true;

       }

       private boolean check() {
              if ("".equals(txtMaGT.getText())) {
                     JOptionPane.showMessageDialog(rootPane, "Cần nhập đủ thông tin");
                     return false;
              } else {
                     for (GiaoTrinh x : dsGiaoTrinh) {
                            if (x.getMaGT().equals(txtMaGT.getText())) {
                                   JOptionPane.showMessageDialog(rootPane, "Mã giáo trình đã tồn tại");
                                   return false;
                            }
                     }

              }
              if ("".equals(txtTenGT.getText())) {
                     JOptionPane.showMessageDialog(rootPane, "Cần nhập đủ thông tin");
                     return false;
              }
              if ("".equals(txtTenMon.getText())) {
                     JOptionPane.showMessageDialog(rootPane, "Cần nhập đủ thông tin");
                     return false;
              }
              if ("".equals(txtSoTC.getText())) {
                     JOptionPane.showMessageDialog(rootPane, "Cần nhập đủ thông tin");
                     return false;
              } else {
                     try {
                            int sotc = Integer.parseInt(txtSoTC.getText());
                     } catch (NumberFormatException e) {
                            JOptionPane.showMessageDialog(rootPane, "Số tín chỉ phải là số");
                            return false;
                     }
              }

              if ("".equals(txtTGBD.getText())) {
                     JOptionPane.showMessageDialog(rootPane, "Cần nhập đủ thông tin");
                     return false;
              } else {
                     try {
                            java.util.Date s = new SimpleDateFormat("dd/MM/yyyy").parse(txtTGBD.getText());
                     } catch (Exception e) {
                            e.printStackTrace();
                            JOptionPane.showMessageDialog(rootPane, "Ngày bắt đâu cần nhập đúng định dạng dd/MM/yyyy");
                            return false;
                     }
              }
              if ("".equals(txtTGKT.getText())) {
                     JOptionPane.showMessageDialog(rootPane, "Cần nhập đủ thông tin");
                     return false;
              } else {
                     try {
                            java.util.Date s = new SimpleDateFormat("dd/MM/yyyy").parse(txtTGBD.getText());
                     } catch (Exception e) {
                            e.printStackTrace();
                            JOptionPane.showMessageDialog(rootPane, "Ngày kêt thúc cần nhập đúng định dạng dd/MM/yyyy");
                            return false;
                     }
              }
              return true;
       }

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
                     java.util.logging.Logger.getLogger(QL_ThongTinGT.class
                             .getName()).log(java.util.logging.Level.SEVERE, null, ex);

              } catch (InstantiationException ex) {
                     java.util.logging.Logger.getLogger(QL_ThongTinGT.class
                             .getName()).log(java.util.logging.Level.SEVERE, null, ex);

              } catch (IllegalAccessException ex) {
                     java.util.logging.Logger.getLogger(QL_ThongTinGT.class
                             .getName()).log(java.util.logging.Level.SEVERE, null, ex);

              } catch (javax.swing.UnsupportedLookAndFeelException ex) {
                     java.util.logging.Logger.getLogger(QL_ThongTinGT.class
                             .getName()).log(java.util.logging.Level.SEVERE, null, ex);
              }
              //</editor-fold>

              /* Create and display the form */
              java.awt.EventQueue.invokeLater(new Runnable() {
                     public void run() {
                            new QL_ThongTinGT().setVisible(true);
                     }
              });
       }

       // Variables declaration - do not modify//GEN-BEGIN:variables
       private javax.swing.JButton btnQuayLai;
       private javax.swing.JButton btnSua;
       private javax.swing.JButton btnThem;
       private javax.swing.JButton btnTimKiem;
       private javax.swing.JButton btnXoa;
       private javax.swing.JComboBox<String> cboChuBien;
       private javax.swing.JComboBox<String> cboKhoa;
       private javax.swing.JLabel jLabel1;
       private javax.swing.JLabel jLabel10;
       private javax.swing.JLabel jLabel11;
       private javax.swing.JLabel jLabel2;
       private javax.swing.JLabel jLabel3;
       private javax.swing.JLabel jLabel4;
       private javax.swing.JLabel jLabel5;
       private javax.swing.JLabel jLabel6;
       private javax.swing.JLabel jLabel7;
       private javax.swing.JLabel jLabel8;
       private javax.swing.JLabel jLabel9;
       private javax.swing.JScrollPane jScrollPane1;
       private javax.swing.JScrollPane jScrollPane2;
       private javax.swing.JList<GiangVien> listCacTacGia;
       private javax.swing.JTable tblGiaoTrinh;
       private javax.swing.JTextField txtMaGT;
       private javax.swing.JTextField txtSoTC;
       private javax.swing.JTextField txtTGBD;
       private javax.swing.JTextField txtTGKT;
       private javax.swing.JTextField txtTenGT;
       private javax.swing.JTextField txtTenMon;
       // End of variables declaration//GEN-END:variables
}
