/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rbms.renbo.ServiceImp;

import com.rbms.renbo.model.Renbo;
import com.rbms.renbo.repository.renboRepository;
import com.rbms.renbo.service.RenboService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Syafiqah Nabilah
 */
public class RenboServiceImp implements RenboService {
    @Autowired
    private renboRepository renboRepository;
    
    @Override
    public Renbo findByEmail(String email) {
        return renboRepository.findByRenboEmail(email);
    }

    @Override
    public Renbo save(Renbo renbo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
