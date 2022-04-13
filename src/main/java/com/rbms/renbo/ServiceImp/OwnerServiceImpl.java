/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rbms.renbo.ServiceImp;

import com.rbms.renbo.model.User;
import com.rbms.renbo.model.Owners;
import com.rbms.renbo.repository.ownerRepository;
import com.rbms.renbo.service.OwnerService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Syafiqah Nabilah
 */
@Service
public class OwnerServiceImpl implements OwnerService {

    @Autowired
    private ownerRepository ownerRepository;
    
    @Override
    public List<Owners> listAllOwner() {
        return ownerRepository.findAll();
    }

    @Override
    public Owners findByEmail(String email) {
       return ownerRepository.findByOwnerEmail(email);
    }

}
