package com.simbirsoftintensiv.intensiv.controller;

import com.simbirsoftintensiv.intensiv.entity.Address;
import com.simbirsoftintensiv.intensiv.entity.Role;
import com.simbirsoftintensiv.intensiv.entity.User;
import com.simbirsoftintensiv.intensiv.service.user.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Set;

@Controller
@RequestMapping(value = "/registration")
public class JspRegistrationController {
    static final Logger log =
            LoggerFactory.getLogger(JspRegistrationController.class);
    @Autowired
    private final UserService userService;

    public JspRegistrationController(UserService userService) {
        this.userService = userService;
    }

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
//                null,
                Set.of(Role.USER));
        Address address = new Address(
                request.getParameter("city"),
                request.getParameter("street"),
                request.getParameter("house"),
                request.getParameter("building"),
                request.getParameter("apartment"));

        user.setAddress(address);
        userService.create(user);
        log.info("Added a new user with phone={}", Long.parseLong(request.getParameter("phone")));
        return "redirect:/";
    }
}
