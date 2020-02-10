package com.store.flower.service;

import com.store.flower.entity.User;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
public class UserServiceTest {

    @Autowired
    private UserService userService;

    @Test
    public void findUserByNameAndPass() {
    }

    @Test
    public void addUser() {

    }

    @Test
    public void isExistUser() {
        User user = userService.isExitUser("aaa");
        Assert.assertEquals("13362150327", user.getTelphone());
    }
}