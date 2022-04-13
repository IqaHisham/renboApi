/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rbms.renbo.repository;

import com.rbms.renbo.model.User;
import com.rbms.renbo.model.Owners;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Syafiqah Nabilah
 */
@Repository
public interface ownerRepository extends CrudRepository<Owners, Integer> {
    //provide interface to reach database

//    Owners findByEmail(String email);    
    Owners findByOwnerEmail(String email);
    //list All owner
    List<Owners> findAll();
    Owners save(Owners owner);
}
