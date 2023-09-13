/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fastfoodstore.gui.form;

import com.fastfoodstore.bus.AccountBUS;
import com.fastfoodstore.bus.Staff_BUS;
import com.fastfoodstore.dto.AccountDTO;
import com.fastfoodstore.dto.StaffDTO;
import com.fastfoodstore.gui.ProjectUtil;
import com.fastfoodstore.gui.form.statisticform.StaTable;
import com.fastfoodstore.gui.item.Button;
import com.fastfoodstore.gui.item.ScrollBar;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.ArrayList;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextField;
import javax.swing.ScrollPaneConstants;
import javax.swing.border.LineBorder;

public class AccountForm extends JPanel {

    private JScrollPane scrollPane;
    private ArrayList<AccountDTO> accList = new ArrayList<>();
    private ArrayList<StaffDTO> staffList = new ArrayList<>();

    private StaTable accTable;

    private JPanel rightPanel;

    private JLabel id;
    private JLabel name;
    private JLabel duty;
    private JTextField passField;

    private Button changeButton;
    private Button actionButton1;
    private Button actionButton2;

    private AccountDTO data;

    private JTextField searchField;
    private Button searchButton;

    public AccountForm() {
        initComponent();
    }

    private void initComponent() {
        this.accList = AccountBUS.getAccount(0);
        this.staffList = new Staff_BUS().getAll1();
        setLayout(null);

        String[] cols = {"STT", "ID tài khoản", "Tên nhân viên", "Chức vụ", "Trạng thái"};
        accTable = new StaTable();
        accTable.setModelTable(cols);
        accTable.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                setDetail(accTable.getSelectedRow());
            }

        });

        scrollPane = new JScrollPane(accTable);
        scrollPane.setVerticalScrollBar(new ScrollBar(Color.decode("#888888"), Color.decode("#eeeeee")));
        scrollPane.setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);
        scrollPane.setBounds(30, 70, 600, 500);
        add(scrollPane);

        setDataAccTable();

        searchField = new JTextField();
        searchField.setFont(ProjectUtil.getMyFont(14));
        searchField.setBounds(650, 70, 210, 30);
        add(searchField);

        searchButton = new Button("Tìm", 80, 30, Color.decode("#333333"));
        searchButton.setBounds(870, 70, 80, 30);
        searchButton.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                if(!"".equals(searchField.getText())) {
                    setDetail();
                }
            }
            
        });
        add(searchButton);

        rightPanel = new JPanel();
        rightPanel.setLayout(null);
        rightPanel.setBorder(new LineBorder(Color.decode("#888888"), 2));
        rightPanel.setBounds(650, 110, 300, 460);
        add(rightPanel);

        JLabel label = new JLabel("THÔNG TIN TÀI KHOẢN");
        label.setFont(ProjectUtil.getMyFont(20));
        label.setHorizontalAlignment(JLabel.CENTER);
        label.setBounds(0, 0, 300, 60);
        rightPanel.add(label);

        JLabel idLabel = new JLabel("ID: ");
        idLabel.setFont(ProjectUtil.getMyFont(14));
        idLabel.setBounds(10, 70, 100, 30);
        rightPanel.add(idLabel);

        id = new JLabel();
        id.setFont(ProjectUtil.getMyFont(14));
        id.setBounds(110, 70, 180, 30);
        rightPanel.add(id);

        JLabel nameLabel = new JLabel("Tên: ");
        nameLabel.setFont(ProjectUtil.getMyFont(14));
        nameLabel.setBounds(10, 100, 100, 30);
        rightPanel.add(nameLabel);

        name = new JLabel();
        name.setFont(ProjectUtil.getMyFont(14));
        name.setBounds(110, 100, 180, 30);
        rightPanel.add(name);

        JLabel dutyLabel = new JLabel("Chức vụ: ");
        dutyLabel.setFont(ProjectUtil.getMyFont(14));
        dutyLabel.setBounds(10, 130, 100, 30);
        rightPanel.add(dutyLabel);

        duty = new JLabel();
        duty.setFont(ProjectUtil.getMyFont(14));
        duty.setBounds(110, 130, 180, 30);
        rightPanel.add(duty);

        JLabel passLabel = new JLabel("Mật khẩu:  ");
        passLabel.setFont(ProjectUtil.getMyFont(14));
        passLabel.setBounds(10, 160, 100, 30);
        rightPanel.add(passLabel);

        passField = new JTextField();
        passField.setFont(ProjectUtil.getMyFont(14));
        passField.setBounds(110, 160, 180, 30);
        rightPanel.add(passField);

        changeButton = new Button("Đổi mật khẩu", 200, 30, Color.decode("#333333"));
        changeButton.setBounds(50, 380, 200, 30);
        changeButton.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                data = new AccountDTO(accList.get(accTable.getSelectedRow()));
                data.setPass(passField.getText());
                int k = AccountBUS.changePass(data);
                if (k >= 0) {
                    NoticeForm noticeForm = new NoticeForm("Thay đổi thành công", 1);
                } else {
                    NoticeForm noticeForm = new NoticeForm("Đã xảy ra lỗi! Hãy thử lại.", 0);
                }
                reset();
            }

        });

        actionButton1 = new Button("Kích hoạt tài khoản", 200, 30, ProjectUtil.getMyGreenColor());
        actionButton1.setBounds(50, 420, 200, 30);
        actionButton1.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                ComFirmForm2 a = new ComFirmForm2("kích hoạt tài khoản");
                if (a.show() != 0) {
                    data.setStatus(true);
                    int k = AccountBUS.changePass(data);
                    if (k >= 0) {
                        NoticeForm noticeForm = new NoticeForm("Kích hoạt thành công", 1);
                    } else {
                        NoticeForm noticeForm = new NoticeForm("Đã xảy ra lỗi! Hãy thử lại.", 0);
                    }
                    reset();
                }

            }

        });

        actionButton2 = new Button("Vô hiệu tài khoản", 200, 30, ProjectUtil.getMyRedColor());
        actionButton2.setBounds(50, 420, 200, 30);
        actionButton2.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                ComFirmForm2 a = new ComFirmForm2("vô hiệu tài khoản");
                if (a.show() != 0) {
                    data.setStatus(false);
                    int k = AccountBUS.changePass(data);
                    if (k >= 0) {
                        NoticeForm noticeForm = new NoticeForm("Vô hiệu thành công", 1);
                    } else {
                        NoticeForm noticeForm = new NoticeForm("Đã xảy ra lỗi! Hãy thử lại.", 0);
                    }
                    reset();
                }
            }

        });
    }

    @Override
    protected void paintComponent(Graphics g) {
        Graphics2D g2 = (Graphics2D) g;
        g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        g2.setColor(getBackground());
        g2.fillRoundRect(0, 0, getWidth(), getHeight(), 15, 15);
        g2.fillRect(0, 0, getWidth() - 20, getHeight());
        super.paintComponent(g);
    }

    public void setDataAccTable() {
        for (int i = 0; i < accList.size(); i++) {
            for (StaffDTO b : staffList) {
                if (b.getID().equals(accList.get(i).getStaffCode())) {
                    if (accList.get(i).getStatus()) {
                        accTable.myAddRow(i, accList.get(i).getStaffCode(), b.getName(), b.getDutyCode(), "Đã kích hoạt");
                    } else {
                        accTable.myAddRow(i, accList.get(i).getStaffCode(), b.getName(), b.getDutyCode(), "Chưa kích hoạt");
                    }
                }
            }

        }
    }

    public void reset() {
        removeAll();
        initComponent();
        repaint();
        validate();
    }

    public void setDetail(int index) {
        rightPanel.remove(changeButton);
        rightPanel.remove(actionButton1);
        rightPanel.remove(actionButton2);
        data = new AccountDTO(accList.get(index));
        id.setText(data.getStaffCode());
        for (StaffDTO b : staffList) {
            if (b.getID().equals(data.getStaffCode())) {
                name.setText(b.getName());
                duty.setText(b.getDutyCode());
            }
        }
        passField.setText(data.getPass());
        if (data.getStatus()) {
            rightPanel.add(actionButton2);
        } else {
            rightPanel.add(actionButton1);
        }
        rightPanel.add(changeButton);
        rightPanel.repaint();
    }

    public void setDetail() {
        rightPanel.remove(changeButton);
        rightPanel.remove(actionButton1);
        rightPanel.remove(actionButton2);
        boolean find = false;
        for (AccountDTO a : accList) {
            if (searchField.getText().equals(a.getStaffCode())) {
                data = new AccountDTO(a);
                find = true;
                break;
            }
        }
        if (find) {
            id.setText(data.getStaffCode());
            for (StaffDTO b : staffList) {
                if (b.getID().equals(data.getStaffCode())) {
                    name.setText(b.getName());
                    duty.setText(b.getDutyCode());
                }
            }
            passField.setText(data.getPass());
            if (data.getStatus()) {
                rightPanel.add(actionButton2);
            } else {
                rightPanel.add(actionButton1);
            }
            rightPanel.add(changeButton);
            rightPanel.repaint(); 
            searchField.setText("");
        } else {
            NoticeForm a = new NoticeForm("Không tìm thấy tài khoản!",0);
        }

    }
}
