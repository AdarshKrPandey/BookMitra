package org.spring.bookMitra.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

      @GetMapping("/adminHome")
      public String adminHome(Model model) {
          return "adminHome";
      }
    }


