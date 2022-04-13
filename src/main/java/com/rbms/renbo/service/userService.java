/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rbms.renbo.service;

import com.rbms.renbo.DTO.userRegistrationDto;
import com.rbms.renbo.model.User;

/**
 *
 * @author Syafiqah Nabilah
 */
public interface userService {
    User findByEmail(String email);
    User saveRegistration(userRegistrationDto user);
    User save(User user, String firstName,String lastName);
}
