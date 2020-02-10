package com.store.flower.repository;

import com.store.flower.entity.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ItemRepository extends JpaRepository<Item, Long> {

    Item findItemByItemNumber(String itemNumber);
}
