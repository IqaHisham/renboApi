/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rbms.renbo.ServiceImp;

import com.rbms.renbo.model.Owners;
import com.rbms.renbo.model.SubsProof;
import com.rbms.renbo.repository.ownerRepository;
import com.rbms.renbo.repository.subspaymentRepo;
import com.rbms.renbo.service.subsService;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Syafiqah Nabilah
 */
@Service
public class subsServiceImp implements subsService{
    @Autowired
    subspaymentRepo subspaymentRepo;
    @Autowired
    ownerRepository ownerRepo;
    
    @Override
    public List<SubsProof> listAllSub() {  
        subspaymentRepo.findAll();
        
        return subspaymentRepo.findAll();
        
    }

    @Override
    public List<String> getInfoListSubs() {
       List<String> array = new ArrayList<String>();
       Iterable<SubsProof> Sproof = subspaymentRepo.findAll();
        Sproof.forEach((p) -> {
            
            Owners owner = new Owners();
//            Optional<Owners> ownerList = ownerRepo.findById(p.getOwnerID());
            
            owner.setOwnerID(0);
//            spsave.set
        });
       
        
        return array;
       
    }

}
