/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rbms.renbo.repository;

import com.rbms.renbo.model.Renbo;
import com.rbms.renbo.model.subscribe;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Syafiqah Nabilah
 */
@Repository
public interface subsRepository extends CrudRepository<subscribe, Integer>{
    List<subscribe> findAll();
    
}
