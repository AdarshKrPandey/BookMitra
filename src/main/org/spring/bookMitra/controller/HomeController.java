package org.spring.bookMitra.controller;

import jakarta.servlet.http.HttpSession;
//import org.spring.bookMitra.dao.CustomerRowMapper;
import org.spring.bookMitra.model.CustomerModel;
//import org.spring.bookMitra.service.BookService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {



    @GetMapping("/")
    public String home() {
        return "home";
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }


    @GetMapping("/dashboard")
    public String dashboard() {
        return "dashboard";
    }

    @GetMapping("/address")
    public String address() {
        return "address";
    }

    @GetMapping("/payment")
    public String paymentmode() {
        return "payment";
    }

    @GetMapping("/summary")
    public String summary() {
        return "summary";
    }

    @GetMapping("/fiction")
    public String fiction() {
        return "fiction";
    }

    @GetMapping("/nonfiction")
    public String nonFiction() {
        return "Non-FictionBook";
    }

    @GetMapping("/novels")
    public String novel() {
        return "novels";
    }

    @GetMapping("/childrenBook")
    public String childrenBook() {
        return "childrenBook";
    }

    @GetMapping("/login")
    public String login(Model model) {
        model.addAttribute("login", new CustomerModel());
        return "login";
    }


    //@ResponseBody
    @GetMapping("/loginError")
    public String loginError(Model model) {
        return "loginError";
    }


    @GetMapping("/logOut")
    public String logout(HttpSession session, Model model, RedirectAttributes reattributes) {
        session.invalidate();
        reattributes.addFlashAttribute("logout", "You have been logged out");
        return "logout";
    }





}

