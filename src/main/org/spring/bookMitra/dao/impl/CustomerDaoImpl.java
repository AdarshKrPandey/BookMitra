package org.spring.bookMitra.dao.impl;

import org.spring.bookMitra.dao.CustomerDao;
//import org.spring.bookMitra.dao.CustomerRowMapper;
import org.spring.bookMitra.model.CustomerModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


public class CustomerDaoImpl implements CustomerDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    //    customer registration
    @Override
    public String customerRegistration(CustomerModel c) {
        String insertSql = "insert into customer(Name,Email,Dob,Contact,Address,Password) values(?,?,?,?,?,?)";
        jdbcTemplate.update(insertSql, c.getCustomerName(), c.getCustomerEmail(), c.getDob(), c.getCustomerContact(), c.getCustomerAddress(), c.getPassword());
        return c.getCustomerName() + "  Registered Successfully.............." + "\n \n Now you can Login here";
    }

    //      show Customer Data
    @Override
    public List<CustomerModel> getCustomerDetails() {
        String sql = "select * from customer";
        return jdbcTemplate.query(sql, new RowMapper<CustomerModel>() {

            @Override
            public CustomerModel mapRow(ResultSet rs, int rowNum) throws SQLException {
                CustomerModel c = new CustomerModel();
                c.setCustomerId(rs.getInt("custId"));
                c.setCustomerName(rs.getString("Name"));
                c.setCustomerEmail(rs.getString("Email"));
                c.setDob(rs.getDate("Dob"));
                c.setCustomerContact(rs.getString("Contact"));
                c.setCustomerAddress(rs.getString("Address"));
                c.setPassword(rs.getString("Password"));
                return c;
            }
        });
    }




    // Authenticate customer by email and password
    public CustomerModel authenticateCustomer(String email, String password) {

        // SQL query with placeholders for email and password
        String sql = "SELECT * FROM customers WHERE customer_email = ? AND password = ?";

        // Query parameters should be passed in an Object array
        return jdbcTemplate.queryForObject(sql, new Object[]{email, password}, new RowMapper<CustomerModel>() {
            @Override
            public CustomerModel mapRow(ResultSet rs, int rowNum) throws SQLException {
                // Create a new Customer object and populate it with data from the ResultSet
                CustomerModel c = new CustomerModel();
                c.setCustomerId(rs.getInt("custId"));
                c.setCustomerName(rs.getString("Name"));
                c.setCustomerEmail(rs.getString("Email"));
                c.setDob(rs.getDate("Dob"));
                c.setCustomerContact(rs.getString("Contact"));
                c.setCustomerAddress(rs.getString("Address"));
                c.setPassword(rs.getString("Password"));
                return c;
            }
        });
    }

    //           Update Customer
    @Override
    public CustomerModel updateCustomer(String customerName, CustomerModel customer) {
        String sql = "UPDATE customer SET Name = ?,Email=?,Dob=?,Contact=?,Address=?,Password=? WHERE Name = ?";
    jdbcTemplate.update(sql,customer.getCustomerName(),customer.getCustomerEmail(),customer.getDob(),customer.getCustomerContact(),customer.getCustomerAddress(),customer.getPassword(),customerName);
        return customer;
    }




    @Override
    public CustomerModel findCustomerByEmail(String email) {
        // SQL query to find the customer by email only
        String sql = "SELECT * FROM customer WHERE Email = ?";

        try {
            // Using jdbcTemplate.queryForObject to map the result to a Customer object
            return jdbcTemplate.queryForObject(sql, new Object[]{email}, (rs, rowNum) -> {
                CustomerModel customer = new CustomerModel();
                customer.setCustomerId(rs.getInt(1));
                customer.setCustomerName(rs.getString(2));
                customer.setCustomerEmail(rs.getString(3));
                customer.setDob(rs.getDate(4));
                customer.setCustomerContact(rs.getString(5));
                customer.setCustomerAddress(rs.getString(6));
                customer.setPassword(rs.getString(7));
                return customer;
            });
        } catch (Exception e) {
            // In case of no customer found or any error, return null
            return null;
        }
    }




}



