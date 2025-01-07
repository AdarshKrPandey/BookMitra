package org.spring.bookMitra.dao;

import org.spring.bookMitra.model.CustomerModel;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CustomerRowMapper implements RowMapper {
    @Override
    public CustomerModel mapRow(ResultSet rs, int rowNum) throws SQLException {

        CustomerModel customer = new CustomerModel();

       customer.setCustomerName(rs.getString("customerName"));
       customer.setCustomerEmail(rs.getString("customerEmail"));
       customer.setCustomerAddress(rs.getString("customerAddress"));
       customer.setCustomerId(rs.getInt("customerId"));
       customer.setDob(rs.getDate("dob"));
       customer.setCustomerContact(rs.getString("customerContact"));
       customer.setPassword(rs.getString("password"));
        return customer;
    }
}
