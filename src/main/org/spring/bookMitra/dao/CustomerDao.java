package org.spring.bookMitra.dao;

import org.spring.bookMitra.model.CustomerModel;

import java.util.List;


public interface CustomerDao {

    //      Customer Registration
    String customerRegistration(CustomerModel customer);
    //      show All Customer Details
    List<CustomerModel> getCustomerDetails();


    //              Update Customer Details
    CustomerModel updateCustomer(String customerName, CustomerModel customer);
    //          Find Customer by Email
    CustomerModel findCustomerByEmail(String email);
    //          Authentication customer
    CustomerModel authenticateCustomer(String email, String password);
}
