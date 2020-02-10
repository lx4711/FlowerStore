package com.store.flower.controller;

import com.store.flower.entity.Item;
import com.store.flower.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/item")
public class ItemController {

    @Autowired
    private ItemService itemService;

    @RequestMapping("/detail")
    public String detail(@RequestParam(value = "number") String number, Model model) {
        Item item = itemService.findItemByItemNumber(number);
        model.addAttribute("item1", item);
        return "flower";
    }
}
