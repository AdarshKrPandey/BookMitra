package org.spring.bookMitra.controller;

import jakarta.servlet.http.HttpSession;
import org.spring.bookMitra.dao.CustomerDao;
import org.spring.bookMitra.model.CartItemModel;
import org.spring.bookMitra.model.CustomerModel;
import org.spring.bookMitra.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Controller
public class OrderController {

@Autowired
CartService cartService;

@Autowired
    CustomerDao customerDao;

    // Checkout processing
    @PostMapping("/processCheckout")
    public String processCheckout(@RequestParam("paymentMethod") String paymentMethod, HttpSession session, Model model) {


        String customerEmail = (String)session.getAttribute("customerDetails");

        System.out.println("Received customerEmail: " + customerEmail);
        CustomerModel customer = customerDao.findCustomerByEmail(customerEmail);
        if (customer == null) {
            System.out.println("Customer not found for email: " + customerEmail);
        } else {
            System.out.println("Customer found: " + customer.getCustomerName());
            model.addAttribute("customer", customer);
        }


        List<CartItemModel> cartItems = cartService.getCartItems(session);
        if (cartItems == null || cartItems.isEmpty()) {
            model.addAttribute("error", "Your cart is empty. Add some items to proceed to checkout.");
            return "cart";  // Return to cart if empty
        }

        double totalPrice = cartService.calculateTotalPrice(session);

        model.addAttribute("paymentMethod", paymentMethod);
        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("cartItems", cartItems);

        // Clear cart after successful checkout
        session.removeAttribute("cart");

        return "orderSummary";  // Order summary view
    }




    @RequestMapping("/orderSummary")
    public String orderSummary(HttpSession session, @ModelAttribute("cartItems") List<CartItemModel> cartItems, Model model,
                               @RequestParam("paymentMethod") String paymentMethod,
                               @RequestParam("totalPrice") double totalPrice) {

        session.setAttribute("cartItems", cartItems);
        session.setAttribute("paymentMethod", paymentMethod);
        session.setAttribute("totalPrice", totalPrice);

        return "checkout"; // JSP view
    }





    @RequestMapping("/checkout")
    public String checkout(@RequestParam("paymentMethod") String paymentMethod,
                           @RequestParam("totalPrice") double totalPrice,
                           @RequestParam Map<String, String> allParams, Model model) {
        // Retrieve individual items from query parameters if necessary
        model.addAttribute("paymentMethod", paymentMethod);
        model.addAttribute("totalPrice", totalPrice);


        return "checkout";
    }


    @GetMapping("/order")
    public String order() {
        return "orderSummary";
    }

}
