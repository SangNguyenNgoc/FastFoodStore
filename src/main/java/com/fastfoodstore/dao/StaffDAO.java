package com.fastfoodstore.dao;

import com.fastfoodstore.dto.AccountDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import com.fastfoodstore.dto.StaffDTO;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

public class StaffDAO implements DAOInterface<StaffDTO> {

    public static StaffDAO getInstance() {
        return new StaffDAO();
    }

    @Override
    public int insert(StaffDTO t) {
        int change = 0;

        try {
            Connection connection = ConnectionData.getConnection();
            String sql = "INSERT INTO `staff` (`id`, `name`, `email`, `numberPhone`, `address`, `birthday`, `dutyCode`, `status`)"
                    + " VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = connection.prepareStatement(sql);

            pst.setString(1, t.getID());
            pst.setString(2, t.getName());
            pst.setString(3, t.getEmail());
            pst.setString(4, t.getNumberPhone());
            pst.setString(5, t.getAddress());
            pst.setDate(6, t.getBirthday());
            pst.setString(7, t.getDutyCode());
            pst.setBoolean(8, Boolean.FALSE);

            change = pst.executeUpdate();

            ConnectionData.closeConnection(connection);
        } catch (Exception e) {
            System.out.println("Insert data failture" + e);
        }
        return change;
    }

    @Override
    public int update(StaffDTO t) {
        int change = 0;

        try {
            Connection connection = ConnectionData.getConnection();
            String sql = "UPDATE `staff`"
                    + " SET `id` = ?, `name` = ?, `email` = ?, `numberPhone` = ?, `address` = ?, `birthday` = ?, `dutyCode` = ?, `status` = ?"
                    + " WHERE `staff`.`id` = ?";
            PreparedStatement pst = connection.prepareStatement(sql);

            pst.setString(1, t.getID());
            pst.setString(2, t.getName());
            pst.setString(3, t.getEmail());
            pst.setString(4, t.getNumberPhone());
            pst.setString(5, t.getAddress());
            pst.setDate(6, t.getBirthday());
            pst.setString(7, t.getDutyCode());
            pst.setBoolean(8, t.getStatus());
            pst.setString(9, t.getID());

            change = pst.executeUpdate();

            ConnectionData.closeConnection(connection);
        } catch (Exception e) {
            System.out.println("Insert data failture" + e);
        }
        return change;
    }

    @Override
    public int delete(StaffDTO t) {
        int change = 0;

        try {
            Connection connection = ConnectionData.getConnection();
//            String sql = "DELETE FROM staff"
//                    + " WHERE `staff`.`id` = ?";

            String sql = "Update staff set status = '1' where id = ?";
            PreparedStatement pst = connection.prepareStatement(sql);

            pst.setString(1, t.getID());

            change = pst.executeUpdate();

            ConnectionData.closeConnection(connection);
        } catch (Exception e) {
            System.out.println("Insert data failture" + e);
        }
        return change;
    }



    @Override
    public ArrayList<StaffDTO> selectAll() {
        ArrayList<StaffDTO> staffList = new ArrayList<StaffDTO>();
        boolean isData = false;

        try {
            Connection connection = ConnectionData.getConnection();
            String sql
                    = "SELECT staff.id,"
                    + "staff.name,"
                    + "staff.email,"
                    + "staff.numberPhone,"
                    + "staff.address,"
                    + "staff.birthday,"
                    + "duty.dutyName as duty,"
                    + "staff.status "
                    + "FROM staff "
                    + "JOIN duty ON staff.dutyCode = duty.dutyCode where status != '1'";
            PreparedStatement pst = connection.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                StaffDTO data = new StaffDTO(
                        rs.getString("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("numberPhone"),
                        rs.getString("address"),
                        rs.getDate("birthday"),
                        rs.getString("duty"),
                        rs.getBoolean("status")
                );
                staffList.add(data);
                isData = true;
            }
            ConnectionData.closeConnection(connection);
        } catch (Exception e) {
            System.out.println("Select data failture" + e);
        }

        if (isData) {
            return staffList;
        } else {
            return null;
        }
    }

    @Override
    public StaffDTO selectById(String id) {
        StaffDTO staff = new StaffDTO();
        boolean isData = false;

        try {
            Connection connection = ConnectionData.getConnection();
            String sql = "SELECT staff.id,"
                    + "staff.name,"
                    + "staff.email,"
                    + "staff.numberPhone,"
                    + "staff.address,"
                    + "staff.birthday,"
                    + "duty.dutyName as duty,"
                    + "staff.status "
                    + "FROM staff "
                    + "JOIN duty ON staff.dutyCode = duty.dutyCode WHERE id = ?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, id);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                staff.setID(rs.getString("id"));
                staff.setName(rs.getString("name"));
                staff.setEmail(rs.getString("email"));
                staff.setNumberPhone(rs.getString("numberPhone"));
                staff.setAddress(rs.getString("address"));
                staff.setBirthday(rs.getDate("birthday"));
                staff.setDutyCode(rs.getString("duty"));
                staff.setStatus(rs.getBoolean("status"));
                isData = true;
            }
            ConnectionData.closeConnection(connection);
        } catch (Exception e) {
            System.out.println("Select data failture" + e);
        }

        if (isData) {
            return staff;
        } else {
            return null;
        }
    }

    public AccountDTO selectAccount(String id) {
        AccountDTO account = new AccountDTO();
        boolean isData = false;

        try {
            Connection connection = ConnectionData.getConnection();
            String sql = "SELECT *"
                    + "FROM staff "
                    + "JOIN account ON account.staffCode = staff.id WHERE id = ?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, id);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                account.setStaffCode(rs.getString("id"));
                account.setPass(rs.getString("pass"));
                account.setStatus(rs.getBoolean("status"));
                isData = true;
            }
            ConnectionData.closeConnection(connection);
        } catch (Exception e) {
            System.out.println("Select data failture" + e);
        }

        if (isData) {
            return account;
        } else {
            return null;
        }

    }

    @Override
    public ArrayList<StaffDTO> selectByCondition(String condition, String colName) {
        ArrayList<StaffDTO> staffList = new ArrayList<StaffDTO>();
        boolean isData = false;

        try {
            Connection connection = ConnectionData.getConnection();
            String sql = "SELECT * FROM staff " + condition + "";
            PreparedStatement pst = connection.prepareStatement(sql);
            // pst.setString(1, condition);            
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                StaffDTO data = new StaffDTO(
                        rs.getString("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("numberPhone"),
                        rs.getString("address"),
                        rs.getDate("birthday"),
                        rs.getString("dutyCode"),
                        rs.getBoolean("status")
                );
                staffList.add(data);
                isData = true;
            }
            ConnectionData.closeConnection(connection);
        } catch (Exception e) {
            System.out.println("Select data failture" + e);
        }

        if (isData) {
            return staffList;
        } else {
            return null;
        }
    }

    public void ExportExcelDatabase(File file) {
        try {
            Connection connection = ConnectionData.getConnection();

            String sql = "SELECT * FROM staff JOIN duty ON staff.dutyCode = duty.dutyCode WHERE staff.status !=1";
            PreparedStatement pst = connection.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();

            XSSFWorkbook workbook = new XSSFWorkbook();
            XSSFSheet sheet = workbook.createSheet("Staff_M");

            XSSFFont font = workbook.createFont();
            font.setFontHeightInPoints((short) 12);
            font.setBold(true);

            XSSFCellStyle style = workbook.createCellStyle();
            style.setFont(font);

            XSSFRow row = sheet.createRow(0);
            XSSFCell cell;

            cell = row.createCell(0);
            cell.setCellValue("id");
            cell.setCellStyle(style);
            cell = row.createCell(1);
            cell.setCellValue("name");
            cell.setCellStyle(style);
            cell = row.createCell(2);
            cell.setCellValue("email");
            cell.setCellStyle(style);
            cell = row.createCell(3);
            cell.setCellValue("phone");
            cell.setCellStyle(style);
            cell = row.createCell(4);
            cell.setCellStyle(style);
            cell.setCellValue("address");
            cell = row.createCell(5);
            cell.setCellValue("date of birth");
            cell.setCellStyle(style);
            cell = row.createCell(6);
            cell.setCellValue("duty");
            cell.setCellStyle(style);
            int i = 1;

            while (rs.next()) {
                row = sheet.createRow(i);
                cell = row.createCell(0);
                cell.setCellValue(rs.getString("id"));
                cell = row.createCell(1);
                cell.setCellValue(rs.getString("name"));
                cell = row.createCell(2);
                cell.setCellValue(rs.getString("email"));
                cell = row.createCell(3);
                cell.setCellValue(rs.getString("numberPhone"));
                cell = row.createCell(4);
                cell.setCellValue(rs.getString("address"));
                cell = row.createCell(5);
                cell.setCellValue(rs.getString("birthday"));
                cell = row.createCell(6);
                cell.setCellValue(rs.getString("dutyName"));

                i++;
            }

            for (int colNum = 0; colNum < row.getLastCellNum(); colNum++) {
                sheet.autoSizeColumn((short) (colNum));
            }
            FileOutputStream out = new FileOutputStream(new File(file.getPath() + "/Staff.xlsx"));
            workbook.write(out);
            out.close();

        } catch (SQLException | IOException ex) {
            System.out.println(ex);
        }

    }

    public void ImportExcelDatabase(File file) {
        try {
            Connection connection = ConnectionData.getConnection();
            DataFormatter formatter = new DataFormatter();
            FileInputStream in = new FileInputStream(file);
            XSSFWorkbook workbook = new XSSFWorkbook(in);
            XSSFSheet sheet = workbook.getSheet("Staff_M");
            Row row;
            for (int i = 1; i <= sheet.getLastRowNum(); i++) {
                row = sheet.getRow(i);
                String id = formatter.formatCellValue(row.getCell(0));
                String name = formatter.formatCellValue(row.getCell(1));
                String email = formatter.formatCellValue(row.getCell(2));
                String phoneNumber = formatter.formatCellValue(row.getCell(3));
                String address = formatter.formatCellValue(row.getCell(4));
                java.sql.Date birthday = Date.valueOf(formatter.formatCellValue(row.getCell(5)));
                String dutyName = formatter.formatCellValue(row.getCell(6));

                String duty_sql = "SELECT * FROM duty where dutyName LIKE ?";
                PreparedStatement dty = connection.prepareStatement(duty_sql);
                dty.setString(1, dutyName);

                ResultSet dutyResultSet = dty.executeQuery();

                String dutyCode = "";
                while (dutyResultSet.next()) {
                    dutyCode = dutyResultSet.getString("dutyCode");

                }

                String sql_check = "SELECT * FROM staff WHERE id = ?";

                PreparedStatement pst_check = connection.prepareStatement(sql_check);
                pst_check.setString(1, id);
                ResultSet rs = pst_check.executeQuery();

                StaffDTO a = selectById(id);
                if (a == null) {
                    StaffDTO b = new StaffDTO(id, name, email, phoneNumber, address, birthday, dutyCode, Boolean.FALSE);
//                    insert();
                    insert(b);
                    new AccountDAO().insert(new AccountDTO(id, "123", false));
                } else {
                    a.setName(name);
                    a.setAddress(address);
                    a.setBirthday(birthday);
                    a.setDutyCode(dutyCode);
                    a.setEmail(email);
                    a.setNumberPhone(phoneNumber);
                    a.setStatus(false);
                    update(a);
                    AccountDTO b = selectAccount(id);
                    if (b == null) {
                        new AccountDAO().insert(new AccountDTO(id, "123", false));

                    }
                }
            }
            in.close();

        } catch (FileNotFoundException ex) {
            System.err.println(ex);
        } catch (IOException | SQLException ex) {
            System.err.println(ex);
        } catch (IllegalArgumentException e) {

        }
    }

    public ArrayList<StaffDTO> selectAll1() {
        ArrayList<StaffDTO> staffList = new ArrayList<StaffDTO>();
        boolean isData = false;

        try {
            Connection connection = ConnectionData.getConnection();
            String sql
                    = "SELECT staff.id,"
                    + "staff.name,"
                    + "staff.email,"
                    + "staff.numberPhone,"
                    + "staff.address,"
                    + "staff.birthday,"
                    + "duty.dutyName as duty,"
                    + "staff.status "
                    + "FROM staff "
                    + "JOIN duty ON staff.dutyCode = duty.dutyCode";
            PreparedStatement pst = connection.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                StaffDTO data = new StaffDTO(
                        rs.getString("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("numberPhone"),
                        rs.getString("address"),
                        rs.getDate("birthday"),
                        rs.getString("duty"),
                        rs.getBoolean("status")
                );
                staffList.add(data);
                isData = true;
            }
            ConnectionData.closeConnection(connection);
        } catch (Exception e) {
            System.out.println("Select data failture" + e);
        }

        if (isData) {
            return staffList;
        } else {
            return null;
        }
    }
}
