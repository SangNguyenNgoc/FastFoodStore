/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fastfoodstore.dao;

import com.fastfoodstore.dto.AccountDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author ADMIN
 */
public class AccountDAO implements DAOInterface<AccountDTO> {

    public AccountDAO() {
    }

    @Override
    public int insert(AccountDTO t) {
        int change = 0;

        try {
            Connection connection = ConnectionData.getConnection();
            String sql = "INSERT INTO `account` (`staffCode`, `pass`) "
                    + " VALUES (?, ?);";
            PreparedStatement pst = connection.prepareStatement(sql);

            pst.setString(1, t.getStaffCode());
            pst.setString(2, t.getPass());

            change = pst.executeUpdate();

            ConnectionData.closeConnection(connection);
            return change;
        } catch (Exception e) {
            System.out.println("Insert data failture" + e);
            return change;
        }
    }

    @Override
    public int update(AccountDTO t) {
        int change = 0;
        try {
            Connection  connection = ConnectionData.getConnection();
            String sql = "UPDATE `account`"
                        +" SET `pass` = ?, `status` = ?"
                        +" WHERE `account`.`staffCode` = ?;";
            PreparedStatement pst = connection.prepareStatement(sql);
            
            pst.setString(1, t.getPass());
            pst.setBoolean(2, t.getStatus());
            pst.setString(3, t.getStaffCode());
            
            change = pst.executeUpdate();
            
            ConnectionData.closeConnection(connection); 
            return 1;
        } catch (Exception e) {
            System.out.println("Insert data failture" + e);
            return -1;
        }
    }

    @Override
    public int delete(AccountDTO t) {
        int change = 0;
        try {
            Connection  connection = ConnectionData.getConnection();
            String sql = "DELETE `account`"
                        +" WHERE `account`.`staffCode` = ?;";
            PreparedStatement pst = connection.prepareStatement(sql);
            
            pst.setString(1, t.getStaffCode());
            
            change = pst.executeUpdate();
            
            ConnectionData.closeConnection(connection); 
            return 1;
        } catch (Exception e) {
            System.out.println("Insert data failture" + e);
            return -1;
        }
    }

    public ArrayList<AccountDTO> selectAll(String sql) {
        ArrayList<AccountDTO> accountList = new ArrayList<AccountDTO>();
        boolean isData = false;

        try {
            Connection connection = ConnectionData.getConnection();
            PreparedStatement pst = connection.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                AccountDTO data = new AccountDTO(
                        rs.getString("staffCode"),
                        rs.getString("pass"),
                        rs.getBoolean("status")
                );
                accountList.add(data);
                isData = true;
            }
            ConnectionData.closeConnection(connection);
        } catch (Exception e) {
            System.out.println("Select data failture" + e);
        }

        if (isData) {
            return accountList;
        } else {
            return null;
        }
    }

    @Override
    public AccountDTO selectById(String id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<AccountDTO> selectByCondition(String condition1, String condition2) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<AccountDTO> selectAll() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
