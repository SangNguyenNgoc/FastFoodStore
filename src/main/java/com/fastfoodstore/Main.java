package com.fastfoodstore;

import com.fastfoodstore.dto.StaffDTO;
import com.fastfoodstore.gui.components.MainFrame;
import com.fastfoodstore.gui.form.ConFirmForm;

public class Main {
    public static void main(String[] args) {
        ConFirmForm conFirmForm = new ConFirmForm();
        Object staff = conFirmForm.show1();
        if(staff instanceof StaffDTO) {
            new MainFrame((StaffDTO) staff);
        } else  {
            String rs = (String) staff;
            if(!rs.equals("close")) {
                new MainFrame(null);
            } else {
                System.exit(0);
            }
        }
    }
}
