/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author LENOVO
 */
public class Bill {
    private int bid;
    private String name;
    private String namecus;
    private String qty;
    private float price;
    private String date;
    private String address;
    private int phone;
    private String email;
    private String note;
    private String status;

    public Bill() {
    }

    public Bill(int bid, String name, String namecus, String qty, float price, String date, String address, int phone, String email, String note, String status) {
        this.bid = bid;
        this.name = name;
        this.namecus = namecus;
        this.qty = qty;
        this.price = price;
        this.date = date;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.note = note;
        this.status = status;
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNamecus() {
        return namecus;
    }

    public void setNamecus(String namecus) {
        this.namecus = namecus;
    }

    public String getQty() {
        return qty;
    }

    public void setQty(String qty) {
        this.qty = qty;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Bill{" + "bid=" + bid + ", name=" + name + ", namecus=" + namecus + ", qty=" + qty + ", price=" + price + ", date=" + date + ", address=" + address + ", phone=" + phone + ", email=" + email + ", note=" + note + ", status=" + status + '}';
    }

    
}
