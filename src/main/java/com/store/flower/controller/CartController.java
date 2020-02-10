package com.store.flower.controller;

import com.store.flower.entity.Address;
import com.store.flower.entity.Cart;
import com.store.flower.entity.Item;
import com.store.flower.entity.User;
import com.store.flower.service.AddressService;
import com.store.flower.service.CartService;
import com.store.flower.service.ItemService;
import com.store.flower.utils.TimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    private CartService cartService;

    @Autowired
    private AddressService addressService;

    @Autowired
    private ItemService itemService;

    @RequestMapping(value = "/addtocart", method = RequestMethod.POST)
    @ResponseBody
    public Object addtocart(@RequestBody Cart c, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.getAttribute("user") == null) {
            return "3";
        }
        String number = c.getItemNumber();
        String username = c.getUsername();
        Item item = itemService.findItemByItemNumber(number);
        Cart cart1 = cartService.findCartItemByNumberAndUsername(number, username);
        if (cart1 != null) {
            cart1.setAddTime(TimeUtil.nowTime());
            cart1.setCount(cart1.getCount() + 1);
            cart1.setPrice(item.getPrice());
            cartService.updateCart(cart1);
            return "1";
        } else {
            c.setCount(1);
            c.setAddTime(TimeUtil.nowTime());
            c.setPrice(item.getPrice());
            c.setItemName(item.getItemName());
            Cart cart = cartService.insertCart(c);
            return "2";
        }
    }

    @RequestMapping("/mycart")
    public String mycart(@RequestParam(value = "username") String username, Model model) {
        List<Cart> list = cartService.findAllByUsername(username);
        List<Address> addresses = addressService.findAllBySendPerson(username);
        model.addAttribute("carts", list);
        model.addAttribute("list", addresses);
        return "cart";
    }

    @RequestMapping(value = "/addorsub", method = RequestMethod.POST)
    @ResponseBody
    public Object addorsubcart(@RequestBody Cart c) {
        String number = c.getItemNumber();
        String username = c.getUsername();
        int flag = c.getCount();
        Cart cart1 = cartService.findCartItemByNumberAndUsername(number, username);
        cart1.setAddTime(TimeUtil.nowTime());
        if (flag == 1) { //表示加1
            cart1.setCount(cart1.getCount() + 1);
        }
        if (flag == 0) {//表示减1操作
            if (cart1.getCount() > 1) {
                cart1.setCount(cart1.getCount() - 1);
            }
        }
        cartService.updateCart(cart1);
        Cart cart = cartService.findCartItemByNumberAndUsername(number, username);
        return cart;
    }
}
