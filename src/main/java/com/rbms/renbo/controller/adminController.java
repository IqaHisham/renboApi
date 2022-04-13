/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rbms.renbo.controller;

import com.rbms.renbo.model.Owners;
import com.rbms.renbo.model.subscribe;
import com.rbms.renbo.repository.ownerRepository;
import com.rbms.renbo.repository.renboRepository;
import com.rbms.renbo.repository.subsRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Syafiqah Nabilah
 */
@RestController
public class adminController {
    Owners owner;
    
    @Autowired
    ownerRepository ownerRepository;
    @Autowired
    renboRepository renboRepository;
    
    @Autowired
    subsRepository subscribeRepository;
    
    @GetMapping("/owner-list")
    public List<Owners> owner(Model model) {
       model.addAttribute("list",ownerRepository.findAll());
        return ownerRepository.findAll();
    }
    
    @GetMapping("/renbo-list")
    public String renboList(Model model) {
       model.addAttribute("list",renboRepository.findAll());
        return "Admin/renbo-list";
    }
    
    @GetMapping("/subs-plan")
    public List<subscribe> subsplan(Model model) {
        return subscribeRepository.findAll();
    }
    @GetMapping("/subscribe/addform")
    public String subscplanadd(Model model){
       model.addAttribute("item", new subscribe());
      return "Admin/subs-add";
    }
    @PostMapping("/subscribe/save")
    public String saveItemImage(subscribe subs, BindingResult result,Model model) {
//        itemServiceImpl.updateItemImage(item);
        subscribeRepository.save(subs);
        
        return "Admin/subs-add";
    }
}
