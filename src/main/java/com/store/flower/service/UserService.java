package com.store.flower.service;

import com.store.flower.entity.User;
import com.store.flower.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    /**
     * 通过用户名和密码查询用户
     *
     * @param name
     * @param pass
     * @return
     */
    public User findUserByNameAndPass(String name, String pass) {
        return userRepository.findByNameAndPass(name, pass);
    }

    /**
     * 添加用户
     *
     * @param user
     * @return
     */
    public User addUser(User user) {
        return userRepository.saveAndFlush(user);
    }

    public User isExitUser(String name) {
        return userRepository.findUserByName(name);
    }
}
