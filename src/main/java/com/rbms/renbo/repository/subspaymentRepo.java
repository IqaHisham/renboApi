/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rbms.renbo.repository;

import com.rbms.renbo.model.SubsProof;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Syafiqah Nabilah
 */
@Repository
public interface subspaymentRepo extends CrudRepository<SubsProof, Integer> {
//    @Query(value="select owners.ownerFirstName,subsproof.paymentProof, subsproof.subsID, subsproof.subsProofId, subsproof.ownerID, subsproof.subsActive, subsproof.subs_EndDate, subsproof.subs_StartDate from subsproof join owners on subsproof.ownerID=owners.ownerID", nativeQuery = true)
//    @Query(value="select p from subsproof p join p.owners o", nativeQuery=true)
    List<SubsProof> findAll();
    
    
   
}
