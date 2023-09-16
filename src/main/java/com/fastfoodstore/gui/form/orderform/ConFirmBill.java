package com.fastfoodstore.gui.form.orderform;

import com.fastfoodstore.bus.ComboBUS;
import com.fastfoodstore.bus.ProductsBUS;
import com.fastfoodstore.dto.BillDetail2DTO;
import com.fastfoodstore.dto.BillDetailDTO;
import com.fastfoodstore.dto.BillsDTO;
import com.fastfoodstore.gui.ProjectUtil;
import com.fastfoodstore.gui.form.billform.BillDetailItem;
import com.fastfoodstore.gui.form.billform.BillDetailList;
import com.fastfoodstore.gui.item.Button;
import com.fastfoodstore.gui.item.ScrollBar;

import javax.swing.*;
import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.geom.RoundRectangle2D;
import java.util.ArrayList;

public class ConFirmBill {
    private Frame frame;

    private com.fastfoodstore.gui.item.Button customButton1;
    private com.fastfoodstore.gui.item.Button customButton2;
    private Font f = new Font("Segoe UI Semibold", Font.PLAIN, 12);
    private int result;

    private BillDetailList<?> billDetailList;
    private JScrollPane rightScrollPane;

    private BillDetailGUI billDetailGUI;

    public ConFirmBill(BillDetailGUI cont) {
        this.billDetailGUI = cont;
        this.result = 0;
    }

    public int show(BillsDTO billsDTO, ArrayList<Object> billList) {
        frame = new JFrame("Custom Button Dialog Example");
        frame.setSize(500, 700);
        frame.setUndecorated(true);
        frame.setShape(new RoundRectangle2D.Double(frame.getX(), frame.getY(), 500, 700, 20, 20));
        frame.setLayout(null);
        frame.setLocationRelativeTo(null);
        setBillDetailList();
        setData(billsDTO, billList);
        frame.add(rightScrollPane);

        customButton1 = new com.fastfoodstore.gui.item.Button("Continue", 200, 30, ProjectUtil.getMyGreenColor());
        customButton1.setBounds(40, 640, 190, 30);
        customButton1.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                e.getComponent().setBackground(new Color(customButton1.getR(), customButton1.getG(), customButton1.getB()));
                billDetailGUI.finishOrder();
                frame.dispose();
            }

            @Override
            public void mousePressed(MouseEvent e) {
                e.getComponent().setBackground(new Color(customButton1.getR(), customButton1.getG(), customButton1.getB(), 200));

            }

        });

        customButton2 = new Button("Cancel", 190, 30, ProjectUtil.getMyRedColor());
        customButton2.setBounds(270, 640, 190, 30);
        customButton2.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                e.getComponent().setBackground(new Color(customButton2.getR(), customButton2.getG(), customButton2.getB()));
                frame.dispose();
            }

            @Override
            public void mousePressed(MouseEvent e) {
                e.getComponent().setBackground(new Color(customButton2.getR(), customButton2.getG(), customButton2.getB(), 200));

            }

        });

        frame.add(customButton1);
        frame.add(customButton2);
        frame.setVisible(true);
        return result;
    }

    public void setRightScrollPane() {
        this.rightScrollPane = new JScrollPane(billDetailList);
        rightScrollPane.setBorder(null);
        rightScrollPane.setVerticalScrollBar(new ScrollBar(Color.decode("#333333"), Color.decode("#333333")));
        rightScrollPane.setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);
        rightScrollPane.setBounds(0, 20, 500, 600);
    }

    public void setBillDetailList() {
        this.billDetailList = new BillDetailList<>();
        billDetailList.setBounds(0, 0, 450, 600);
        setRightScrollPane();
    }

    public void setData(BillsDTO billsDTO, ArrayList<Object> billList) {
        billDetailList.addItem(new BillDetailItem("Mã hóa đơn: " + billsDTO.getBillCode()));
        billDetailList.addItem(new BillDetailItem("Thời gian: " + billsDTO.getDate()));
        billDetailList.addItem(new BillDetailItem("Vị trí: " + billsDTO.getLocation()));
        if (billsDTO.getStaffId() != null) {
            billDetailList.addItem(new BillDetailItem("Mã nhân viên: " + billsDTO.getStaffId()));
        }
        billDetailList.addItem(new BillDetailItem("-------------------------------"));
        billDetailList.addItem(new BillDetailItem("Chi tiết hóa đơn"));
        billDetailList.addItem(new BillDetailItem("Tên sản phẩm", "Giá tiền"));
        for (Object a : billList) {
            if (a instanceof BillDetailDTO) {
                BillDetailDTO item = (BillDetailDTO) a;
                String name = ProductsBUS.getProductsByCodeInoreCase(item.getProductCode()).getProductName().split("/")[0];
                BillDetailItem b = new BillDetailItem(item.getAmountProduct() + "x " + name, ProjectUtil.toMoney(item.getPrice() * item.getAmountProduct()));
                billDetailList.addItem(b);
            } else {
                BillDetail2DTO item = (BillDetail2DTO) a;
                String name = ComboBUS.getComboByCodeInoreCase(item.getComboCode()).getComboName().split("/")[0];
                BillDetailItem b = new BillDetailItem(item.getAmountCombo() + "x " + name, ProjectUtil.toMoney(item.getPrice() * item.getAmountCombo()));
                billDetailList.addItem(b);
            }
        }
        billDetailList.addItem(new BillDetailItem("-------------------------------"));
        billDetailList.addItem(new BillDetailItem("Tổng cộng: ", ProjectUtil.toMoney(billsDTO.getTotalPrice()), 3));
    }

    public void setResult(int result) {
        this.result = result;
    }
}
