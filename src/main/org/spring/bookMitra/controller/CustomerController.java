package org.spring.bookMitra.controller;

import jakarta.servlet.http.HttpSession;
import org.spring.bookMitra.dao.impl.CustomerDaoImpl;
import org.spring.bookMitra.model.CustomerModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
public class CustomerController {

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    private CustomerDaoImpl customerDao;

    // Show customer home page
    @GetMapping("/customerHome")
    public String homeCustomer(HttpSession session, Model model) {
        String customer = (String) session.getAttribute("customerDetails");
        String password = (String) session.getAttribute("password");
        System.out.println(customer);
        if (customer != null) {
            model.addAttribute("customer", customer);
            model.addAttribute("customerDetails", customer);
            model.addAttribute("password", password);
            return "customerHome"; // JSP page to show customer details
        } else {
            return "redirect:/login"; // Redirect to login if no customer found in session
        }
    }


    // Show customer registration page
    @GetMapping("/register")
    public String register(Model model) {
        model.addAttribute("customer", new CustomerModel());
        return "register";
    }

    // Insert Customer into database
    @PostMapping("/insert")
    public String insert(@ModelAttribute("customer") CustomerModel customer, RedirectAttributes reattributes) {
        String encodedPassword = bCryptPasswordEncoder.encode(customer.getPassword());
        customer.setPassword(encodedPassword);
        String msg = customerDao.customerRegistration(customer);
        reattributes.addFlashAttribute("insert", msg);
        return "redirect:/login";
    }

    // Show Customer Details
    @GetMapping("/customerDetail")
    public String showCustomerDetail(Model model) {
        List<CustomerModel> customerDetails = customerDao.getCustomerDetails();
        model.addAttribute("customers", customerDetails);
        return "customerDetail";
    }

        //      For Profile Showing
    @GetMapping("/profile")
    public String showProfile(Model model, @RequestParam ("customerEmail") String customerEmail,
                              @RequestParam("password") String password) {

        System.out.println(customerEmail+":"+password);

        if (customerEmail == null || password == null) {
            model.addAttribute("error", "Missing email or password");
            return "login";  // Redirect to login page if parameters are missing
        }

        CustomerModel customer = customerDao.findCustomerByEmail(customerEmail);

       // System.out.println("profile: " + customer);
        model.addAttribute("customer", customer);
        return "profile";  // Return profile page
    }


        //          edit customer details
    @GetMapping("/editCust/{customerName}")
    public String editUser(@PathVariable("customerName") String customerName, Model model) {
        model.addAttribute("customer", new CustomerModel());
        return "profileUpdate";
    }


    //          update Book details
    @PostMapping("/editCust/{customerName}")
    public String updateBook(@PathVariable("customerName") String customerName, @ModelAttribute("customer") CustomerModel customer, RedirectAttributes attrs) {
        customer.setCustomerName(customerName);
        customerDao.updateCustomer(customerName, customer);
        attrs.addFlashAttribute("resultMsg", "Customer updated successfully.");
        return "profileUpdate";
    }


}