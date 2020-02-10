package com.store.flower.controller;


import com.store.flower.entity.Address;
import com.store.flower.entity.Cart;
import com.store.flower.entity.User;
import com.store.flower.service.AddressService;
import com.store.flower.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/address")
public class AddressController {

    @Autowired
    private AddressService addressService;

    @Autowired
    private CartService cartService;

    @RequestMapping("insert")
    public String insertAddress(@RequestParam(value = "username") String username, Model model, @RequestParam(value = "name") String name, @RequestParam(value = "telphone") String telphone, @RequestParam(value = "address") String add) {
        Address a = new Address();
        a.setName(name);
        a.setTelphone(telphone);
        a.setAddress(add);
        a.setSendPerson(username);
        Address address = addressService.insertAddress(a);
        List<Address> list = addressService.findAllBySendPerson(username);
        List<Cart> carts = cartService.findAllByUsername(username);
        model.addAttribute("list", list);
        model.addAttribute("carts", carts);
        return "cart";
    }
}
