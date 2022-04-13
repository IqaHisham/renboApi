/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rbms.renbo.controller;

import com.rbms.renbo.ServiceImp.subsServiceImp;
import com.rbms.renbo.config.FileUploadUtil;
import com.rbms.renbo.model.SubsProof;
import com.rbms.renbo.model.subscribe;
import com.rbms.renbo.repository.ownerRepository;
import com.rbms.renbo.repository.subsRepository;
import com.rbms.renbo.repository.subspaymentRepo;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Syafiqah Nabilah
 */
@RestController
public class subscriptionController {
    //
    @Autowired
    subsRepository subsRepository;
    @Autowired
    subspaymentRepo subspaymentRepo;
    @Autowired
    subsServiceImp subserviceImp;
    @Autowired
    ownerRepository ownerRepository;
    
    @RequestMapping("/subscribe")
    public List<SubsProof> subscribe(Model model) {
        model.addAttribute("subscribe", subserviceImp.listAllSub());
        return subserviceImp.listAllSub();
    }
    
    @GetMapping("/subscribe-list")
    public List<SubsProof> subscribelist(Model model){
      return subspaymentRepo.findAll();
    }
    
    @RequestMapping("/subscribe-payment/{id}")
    public String subscribePayment(@PathVariable("id") int id, Model model) {
         model.addAttribute("subs",  subsRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid item Id:" + id)));
        return "owner/subscribe-payment";
    }
    
    @PostMapping("/requestSubscribe")
    public String requestSubs(SubsProof subp, BindingResult result, Model model, 
            @RequestParam("paymentProof") MultipartFile multipartFile1) throws IOException{
        String img1 = StringUtils.cleanPath(multipartFile1.getOriginalFilename());
        subp.setPaymentProof(img1);
        subspaymentRepo.save(subp);
        String uploadDir = "/Users/User/Documents/GitHub/Renbo-MS/src/main/resources/static/img/proof/";
        FileUploadUtil.saveFile(uploadDir, img1, multipartFile1);
        return "owner/subscribe";
    }
    
}
