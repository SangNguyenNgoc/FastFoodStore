/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fastfoodstore.bus;

import com.fastfoodstore.dao.AccountDAO;
import com.fastfoodstore.dao.DutyDAO;
import com.fastfoodstore.dao.StaffDAO;
import com.fastfoodstore.dto.AccountDTO;
import com.fastfoodstore.dto.DutyDTO;
import com.fastfoodstore.dto.StaffDTO;
import java.io.File;
import java.util.ArrayList;
import javax.swing.filechooser.FileNameExtensionFilter;

/**
 *
 * @author k
 */
public class Staff_BUS {

    private StaffDAO _dbStaff = StaffDAO.getInstance();
    private DutyDAO _dbDuty = DutyDAO.getInstance();
    private AccountDAO _dbAccount = new AccountDAO();

    public Staff_BUS() {

    }

    public ArrayList<StaffDTO> getAll() {
        return _dbStaff.selectAll();
    }

    public ArrayList<DutyDTO> getAllDutyDTOs() {

        return _dbDuty.selectAll();
    }

    public ArrayList<StaffDTO> update(StaffDTO staff) {

        _dbStaff.update(staff);

        return _dbStaff.selectAll();
    }

    public StaffDTO getOne(String id) {

        return _dbStaff.selectById(id);
    }

    public StaffDTO delete(StaffDTO t) {
        _dbStaff.delete(t);
        return t;
    }

    public StaffDTO create(StaffDTO t) {
        _dbStaff.insert(t);
        return t;
    }

    public void ExportExcel(File selected) {
        _dbStaff.ExportExcelDatabase(selected);
    }

    public void ImportExcel(File file) {
        _dbStaff.ImportExcelDatabase(file);
    }

    public void init() {
    }

    public AccountDTO getStaffAccount(String id) {
        return _dbStaff.selectAccount(id);
    }

    public void createStaffAccount(String id) {
        AccountDTO a = new AccountDTO(id, "123", Boolean.FALSE);

        _dbAccount.insert(a);
    }

    public void deleteStaffAccount(String id) {
        AccountDTO a = _dbStaff.selectAccount(id);
        _dbAccount.delete(a);

    }

    public void ImportExcel(FileNameExtensionFilter file) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
