package org.spring.bookMitra.handler;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import java.io.IOException;
import java.util.Collection;
import java.util.Date;

public class LoginSuccessHandler implements AuthenticationSuccessHandler {

    private final RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {

        if (authentication.isAuthenticated()) {
            System.out.println("User authenticated....");
         String email= authentication.getName();
            String password= (String) authentication.getCredentials();
            System.out.println("email:"+email);
            request.getSession().setAttribute("customerDetails", email);
            request.getSession().setAttribute("password", password);// store entire customer object
            // sent to the customer controller
        }

        Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
        for (GrantedAuthority authority : authorities) {

            if (authority.getAuthority().equals("ROLE_ADMIN")) {
                redirectStrategy.sendRedirect(request, response, "/adminHome");

            } else if (authority.getAuthority().equals("ROLE_CUSTOMER")) {
                redirectStrategy.sendRedirect(request, response, "/customerHome");


            }
        }
    }
}
