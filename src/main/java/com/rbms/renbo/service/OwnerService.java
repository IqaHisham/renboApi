/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rbms.renbo.service;

import com.rbms.renbo.model.User;
import com.rbms.renbo.model.Owners;
import java.util.List;

/**
 *
 * @author Syafiqah Nabilah
 */
public interface OwnerService {
    
    Owners findByEmail(String email);
    List<Owners> listAllOwner();
}
