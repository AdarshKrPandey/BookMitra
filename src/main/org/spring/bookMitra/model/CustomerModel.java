package org.spring.bookMitra.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class     CustomerModel {

    private int customerId;
    private String customerName;
    private String customerEmail;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date dob;
    private String customerContact;
    private String customerAddress;
    private String password;


    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getCustomerContact() {
        return customerContact;
    }

    public void setCustomerContact(String customerContact) {
        this.customerContact = customerContact;
    }

    public String getCustomerAddress() {
        return customerAddress;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "customerId=" + customerId +
                ", customerName='" + customerName + '\'' +
                ", customerEmail='" + customerEmail + '\'' +
                ", dob=" + dob +
                ", customerContact='" + customerContact + '\'' +
                ", customerAddress='" + customerAddress + '\'' +
                ", password='" + password + '\'' +

                '}';
    }
}
