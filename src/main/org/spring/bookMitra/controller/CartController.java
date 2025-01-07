package org.spring.bookMitra.controller;

import jakarta.servlet.http.HttpSession;
import org.spring.bookMitra.dao.CustomerDao;
import org.spring.bookMitra.model.CartItemModel;
import org.spring.bookMitra.model.CustomerModel;
import org.spring.bookMitra.service.CartServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Controller
public class CartController {

    @Autowired
    private CartServiceImpl cartService;

    @Autowired
    CustomerDao customerDao;

    // Add book to cart
    @RequestMapping("/add-to-cart/{bookId}")
    public String addToCart(@PathVariable Integer bookId, HttpSession session) {
        cartService.addBookToCart(bookId, session);
        return "redirect:/cart";  // Redirect to the cart page
    }


    // Update cart item quantity
    @PostMapping("/update-cart/{bookId}")
    public String updateCart(@PathVariable Integer bookId, @RequestParam("quantity") int quantity, HttpSession session) {
        // Ensure quantity is valid
        if (quantity < 1) {
            return "redirect:/cart";
        }
        cartService.updateCartItemQuantity(bookId, quantity, session);
        return "redirect:/cart";  // Redirect to cart after update
    }


    // Remove book from cart
    @GetMapping("/remove-from-cart/{bookId}")
    public String removeFromCart(@PathVariable Integer bookId, HttpSession session) {
        cartService.removeBookFromCart(bookId, session);
        return "redirect:/cart";  // Redirect to cart after removal
    }


    // View the cart
    @RequestMapping("/cart")
    public String viewCart(HttpSession session, Model model) {
        List<CartItemModel> cart = (List<CartItemModel>) session.getAttribute("cart");
        model.addAttribute("cart", cart);

        // Calculate total price if the cart has items
        if (cart != null && !cart.isEmpty()) {
            double totalPrice = cart.stream()
                    .mapToDouble(CartItemModel::getTotalPrice)
                    .sum();
            model.addAttribute("totalPrice", totalPrice);
        }
        return "cart"; // Returns the JSP page
    }


}
