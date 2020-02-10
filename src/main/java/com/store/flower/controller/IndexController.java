package com.store.flower.controller;


import com.store.flower.entity.Item;
import com.store.flower.service.ItemService;
import com.store.flower.utils.UserUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;


@Controller
public class IndexController {
    @Autowired
    private ItemService itemService;

    @RequestMapping("/")
    public String index(Model model) {
        List<Item> list = itemService.findAll();
        List<Item> list1 = list.subList(0, 8);
        model.addAttribute("items", list1);
        return "index";
    }

    @RequestMapping("/index")
    public String toIndex(Model model) {
        List<Item> list = itemService.findAll();
        List<Item> list1 = list.subList(0, 8);
        model.addAttribute("items", list1);
        return "login";
    }

    @RequestMapping("/register")
    public String register(Model model) {
        String checkcode = UserUtil.getCheckCode();
        model.addAttribute("checkcode", checkcode);
        return "register";
    }
}
