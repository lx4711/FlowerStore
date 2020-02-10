package com.store.flower.service;

import com.store.flower.entity.Item;
import com.store.flower.repository.ItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ItemService {

    @Autowired
    private ItemRepository itemRepository;

    /**
     * 查询所有物品
     *
     * @return
     */
    public List<Item> findAll() {
        return itemRepository.findAll();
    }

    /**
     * 通过商品编号查询商品
     *
     * @param itemNumber
     * @return
     */
    public Item findItemByItemNumber(String itemNumber) {
        return itemRepository.findItemByItemNumber(itemNumber);
    }
}
