package com.store.flower.service;

import com.store.flower.entity.Order;
import com.store.flower.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class OrderService {
    @Autowired
    private OrderRepository orderRepository;

    public Order insertOrder(Order o) {
        Order order = orderRepository.save(o);
        return order;
    }
}
