/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rbms.renbo.repository;

import com.rbms.renbo.model.Item;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Syafiqah Nabilah
 */
@Repository
public interface itemRepository extends JpaRepository<Item, Integer> {
        @Query(value="select * from item where itemAvailability='Available'", nativeQuery = true)
        List<Item> findAll();
        
        @Query(value="select * from item where ownerID=?1", nativeQuery = true)
        List<Item> findAll(int ownerID);
        
//    Owner findByEmail(String email);
}
