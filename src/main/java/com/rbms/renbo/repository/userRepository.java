package com.rbms.renbo.repository;

import com.rbms.renbo.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

//As interface to user bean

/**
 *
 * @author Syafiqah Hisham
 */
@Repository
public interface userRepository extends JpaRepository<User, Long> {
    //provide interface/implement way to authorize
    User findByEmail(String email);
    User save(User user);
}
