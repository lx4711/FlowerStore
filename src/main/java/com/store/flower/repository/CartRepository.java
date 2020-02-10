package com.store.flower.repository;

import com.store.flower.entity.Cart;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public interface CartRepository extends JpaRepository<Cart, Long> {

    Cart findCartByItemNumberAndUsername(String number, String username);

    List<Cart> findAllByUsername(String username);

    void deleteCartByItemNumberAndUsername(String itemNumber, String username);

    @Transactional
    @Query(value = "update cart set count =?1 where item_number =?2 and username =?3", nativeQuery = true)
    @Modifying(clearAutomatically = true)
    void updateCart(int count, String item_number, String username);
}
