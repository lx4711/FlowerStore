package com.store.flower.controller;

import com.store.flower.entity.Cart;
import com.store.flower.entity.Order;
import com.store.flower.service.CartService;
import com.store.flower.service.OrderService;
import com.store.flower.utils.TimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.transaction.Transactional;

@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private CartService cartService;


    @RequestMapping(value = "/submit", method = RequestMethod.POST)
    @Transactional
    @ResponseBody
    public Object submit(@RequestParam(value = "username") String username, @RequestParam(value = "select[]") String[] select, @RequestParam(value = "address[]") String[] address) {
        String name = username;
        String receivePerson = address[0];
        String telphone = address[1];
        String address1 = address[2];
        for (String number : select) {
            Cart cart = cartService.findCartItemByNumberAndUsername(number, name);
            String itemNumber = cart.getItemNumber();
            int count = cart.getCount();
            String itemName = cart.getItemName();
            float price = cart.getPrice();
            String sendPerson = cart.getUsername();
            Order order = new Order();
            order.setReceivePerson(receivePerson);
            order.setTelphone(telphone);
            order.setAddress(address1);
            order.setItemNumber(itemNumber);
            order.setItemName(itemName);
            order.setCount(count);
            order.setPrice(price);
            order.setTotle(order.getPrice(), order.getCount());
            order.setOrderTime(TimeUtil.nowTime());
            order.setSendPerson(sendPerson);
            Order order1 = orderService.insertOrder(order);
            cartService.delete(cart);
        }
        return "1";
    }

}
