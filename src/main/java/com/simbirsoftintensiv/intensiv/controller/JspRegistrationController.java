package com.simbirsoftintensiv.intensiv.controller;


import com.simbirsoftintensiv.intensiv.entity.Address;
import com.simbirsoftintensiv.intensiv.entity.Role;
import com.simbirsoftintensiv.intensiv.entity.User;
import com.simbirsoftintensiv.intensiv.service.user.UserService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@AllArgsConstructor
@RequestMapping(value = "/registration")
public class JspRegistrationController {

    private final UserService userService;

    @GetMapping
    public String registration(Model model) {
        model.addAttribute("userForm", new User());
        return "/registration";
    }

    @PostMapping
    public String create(HttpServletRequest request) {
        User user = new User(
                Long.parseLong(request.getParameter("phone")),
                request.getParameter("email"),
                request.getParameter("firstName"),
                request.getParameter("secondName"),
                request.getParameter("patronymic"),
                Role.USER
                );
        Address address = new Address(
                request.getParameter("city"),
                request.getParameter("street"),
                request.getParameter("house"),
                request.getParameter("building"),
                request.getParameter("apartment"));

        user.setAddress(address);
        userService.save(user);
        return "redirect:/";
    }
}
