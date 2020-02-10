package com.store.flower.repository;

import com.store.flower.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    /**
     * 通过用户名和密码查询用户
     *
     * @param name
     * @param pass
     * @return
     */
    User findByNameAndPass(String name, String pass);

    User findUserByName(String name);

}
