package com.EinsteinCanavari.LokumcuBaba.service;

import java.sql.*;
import java.text.SimpleDateFormat;


import com.EinsteinCanavari.LokumcuBaba.model.BasvuruForm;

public class BasvuruManager {
    private Connection conn;
    private PreparedStatement preparedStatement;

    private void DBConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        String url = "jdbc:mysql://localhost:3306/lokumcubabadb";
        try {
            conn = DriverManager.getConnection(url, "root", "root");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean TCKimlikCheck(String tcKimlik) throws SQLException {
        DBConnection();
        String selectSQL = "SELECT * from basvuru WHERE TCKimlik = ?";
        preparedStatement = conn.prepareStatement(selectSQL);
        preparedStatement.setString(1, tcKimlik);
        ResultSet rs = preparedStatement.executeQuery();
        if (rs.next()) {
            return false;
        } else return true;

    }

    public void DBInsert(BasvuruForm bf) {
        DBConnection();
        try {
            int Ptbool;
            if (bf.getpTicaret() == true) Ptbool = 1;
            else Ptbool = 0;
            SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
            java.util.Date date = sdf1.parse(bf.getdTarihi());
            java.sql.Date DTar = new Date(date.getTime());
            Statement myStmt = conn.createStatement();
            String query = " insert into basvuru (AdSoyad, TCKimlik, Adres, Telefon, EPosta, DTarihi,PTicaret,TSebep,TSehir,TIlce,TSemt,YMiktar,Ilave)" +
                    "values (?, ?, ?, ?, ?, ? , ? , ? , ? , ? , ? , ? , ? )";
            PreparedStatement preparedStmt = conn.prepareStatement(query);
            preparedStmt.setString(1, bf.getAdSoyad());
            preparedStmt.setString(2, bf.getTcKimlik());
            preparedStmt.setString(3, bf.getAdres());
            preparedStmt.setString(4, bf.getTelefon());
            preparedStmt.setString(5, bf.getePosta());
            preparedStmt.setDate(6, DTar);
            preparedStmt.setInt(7, Ptbool);
            preparedStmt.setString(8, bf.gettSebep());
            preparedStmt.setString(9, bf.gettSehir());
            preparedStmt.setString(10, bf.gettIlce());
            preparedStmt.setString(11, bf.gettSemt());
            preparedStmt.setInt(12, bf.getYmiktar());
            preparedStmt.setString(13, bf.getIlave());
            preparedStmt.execute();

            conn.close();
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
    }

}