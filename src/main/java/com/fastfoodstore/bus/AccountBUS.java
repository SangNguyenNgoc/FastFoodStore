/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fastfoodstore.bus;

import com.fastfoodstore.dao.AccountDAO;
import com.fastfoodstore.dto.AccountDTO;
import java.util.ArrayList;

/**
 *
 * @author ADMIN
 */
public class AccountBUS {
    public static ArrayList<AccountDTO> getAccount(int type) {
        String sql;
        if(type == 1) {
            sql = "SELECT * FROM account where status = 1";
        } else {
            sql = "SELECT * FROM account";
        }
        return new AccountDAO().selectAll(sql);
    }
    
    public static int changePass(AccountDTO t) {
        return new AccountDAO().update(t);
    }
    
}
