package com.store.flower.service;

import com.store.flower.entity.Cart;
import com.store.flower.repository.CartRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartService {

    @Autowired
    private CartRepository cartRepository;

    /**
     * 查询购物车所有商品
     *
     * @return
     */
    public List<Cart> findAllByUsername(String username) {
        return cartRepository.findAllByUsername(username);
    }

    /**
     * 通过商品编号查询购物车商品
     *
     * @param number
     * @return
     */
    public Cart findCartItemByNumberAndUsername(String number, String username) {
        return cartRepository.findCartByItemNumberAndUsername(number, username);
    }

    /**
     * 添加购物车
     *
     * @param cart
     * @return
     */
    public Cart insertCart(Cart cart) {
        return cartRepository.save(cart);
    }

    /**
     * 更新购物车
     *
     * @param cart
     */
    public void updateCart(Cart cart) {
        cartRepository.updateCart(cart.getCount(), cart.getItemNumber(), cart.getUsername());
    }

//    public void deleteByItemNumberAndUsername(String itemNumber,String username){
//        cartRepository.deleteCartByItemNumberAndUsername(itemNumber,username);
//    }

    public void delete(Cart cart) {
        cartRepository.delete(cart);
    }

}
