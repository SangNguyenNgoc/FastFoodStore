/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fastfoodstore.bus;

import com.fastfoodstore.dao.ComboDAO;
import com.fastfoodstore.dao.ComboDetailDAO;
import com.fastfoodstore.dao.ProductsDAO;
import com.fastfoodstore.dto.ComboDTO;
import com.fastfoodstore.dto.ComboDetailDTO;
import com.fastfoodstore.dto.ProductsDTO;
import com.fastfoodstore.gui.ProjectUtil;
import java.util.ArrayList;

/**
 *
 * @author ADMIN
 */
public class ComboBUS {

    public static ArrayList<ComboDTO> getAllCombo() {
        return ComboDAO.getInstance().selectAll();
    }

    public static ArrayList<ComboDTO> getComboInGroup(String code) {
        return ComboDAO.getInstance().selectByCondition("groupCode = '" + code + "' and inMenu = 1", "");
    }

    public static ComboDTO getComboByCode(String code) {
        return ComboDAO.getInstance().selectById(code);
    }

    public static int updateCombo(ComboDTO t) {
        return ComboDAO.getInstance().update(t);
    }

    public static int insertCombo(ComboDTO t) {
        return ComboDAO.getInstance().insert(t);
    }

    public static ArrayList<String> getDetail(String code) {
        ArrayList<ComboDetailDTO> a = ComboDetailDAO.getInstance().selectByCondition(" where comboCode = '" + code + "'", "");
        ArrayList<String> result = new ArrayList<>();
        for (ComboDetailDTO b : a) {
            result.add(ProductsBUS.getProductsByCode(b.getProductCode()).getProductName());
        }
        return result;
    }

    public static int insertDetailCombo(String comboCode, ArrayList<String> p) {
        int k = 0;
        for (String a : p) {
            k = ComboDetailDAO.getInstance().insert(new ComboDetailDTO(comboCode, a));
            if (k == 0) {
                break;
            }
        }
        return k;
    }
    
     public static int delete(ComboDTO t) {
        if (BillDetailBUS.getComboSale(t.getComboCode()) == 0) {
            int d = ComboBUS.delete2(t.getComboCode());
            int k = ComboDAO.getInstance().delete(t);
            if (k != 0) {
                ProjectUtil.deleteImg(t.getComboImage());
            }
            return k;
        } else {
            int d = ComboBUS.delete2(t.getComboCode());
            t.setInSys(false);
            int k = ComboDAO.getInstance().update(t);
            if (k != 0) {
                ProjectUtil.deleteImg(t.getComboImage());
            }
            return k;
        }
    }

    public static int delete1(String pCode) {
        String sql = "DELETE FROM combodetail "
                + "WHERE `combodetail`.`productCode` = '" + pCode + "'";
        return ComboDetailDAO.getInstance().delete(sql);
    }
    
    public static int delete2(String cCode) {
        String sql = "DELETE FROM combodetail "
                + "WHERE `combodetail`.`comboCode` = '" + cCode + "'";
        return ComboDetailDAO.getInstance().delete(sql);
    }
}
