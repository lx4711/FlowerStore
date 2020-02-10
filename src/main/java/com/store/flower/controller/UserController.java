package com.store.flower.controller;

import com.store.flower.entity.User;
import com.store.flower.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public User login(@RequestBody User u, HttpServletRequest request, Model model) {
        User user = userService.findUserByNameAndPass(u.getName(), u.getPass());
        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            return user;
        } else {
            return null;
        }
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    @ResponseBody
    public User register(@RequestBody User u) {
        if (userService.isExitUser(u.getName()) != null) {
            return null;
        } else {
            User user = userService.addUser(u);
            if (user != null) {
                return user;
            } else {
                return null;
            }
        }
    }
}
