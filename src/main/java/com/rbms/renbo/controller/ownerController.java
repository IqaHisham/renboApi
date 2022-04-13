/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rbms.renbo.controller;

import com.rbms.renbo.config.FileUploadUtil;
import com.rbms.renbo.model.Item;
import com.rbms.renbo.repository.itemRepository;
import com.rbms.renbo.repository.ownerRepository;
import com.rbms.renbo.service.itemService;
import java.io.IOException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Syafiqah Nabilah
 */
@Controller

public class ownerController {    
    @Autowired
    ownerRepository ownerRepository;
    
    @Autowired
    itemRepository itemRepository;

    @Autowired
    itemService itemService;
    
    String systemDir = System.getProperty("user.dir");
   

    //save item in db
    @PostMapping("/saveItem")
    public String addItem(Item item, BindingResult result, Model model, 
            @RequestParam("itemImage_1") MultipartFile multipartFile1,
            @RequestParam("itemImage_2") MultipartFile multipartFile2,
            @RequestParam("itemImage_3") MultipartFile multipartFile3) throws IOException {
        String img1 = StringUtils.cleanPath(multipartFile1.getOriginalFilename());
        String img2 = StringUtils.cleanPath(multipartFile2.getOriginalFilename());
        String img3 = StringUtils.cleanPath(multipartFile3.getOriginalFilename());
        
        item.setItemImage_1(img1);
        item.setItemImage_2(img2);
        item.setItemImage_3(img3);

        Item savedItem = itemRepository.save(item);
        System.out.println(systemDir);
        String uploadDir = "/Users/User/Documents/GitHub/Renbo-MS/src/main/resources/static/img/catalog/";
        FileUploadUtil.saveFile(uploadDir, img1, multipartFile1);
        FileUploadUtil.saveFile(uploadDir, img2, multipartFile2);
        FileUploadUtil.saveFile(uploadDir, img3, multipartFile3);
        return "redirect:Item/List";
    }
    //get upload image form
    @GetMapping("/Item/Add-img/{id}")
    public String addItemImg(@PathVariable("id") int id, Model model) {
        Item item = itemRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid item Id:" + id));
        model.addAttribute("item", item);
        return "owner/item-addImg";
    }
    
    //save uploaded image in database
    @PostMapping("/saveImage/{id}")
    public String saveItemImage(@PathVariable("id") int id,Item item, BindingResult result,
        Model model) {
//        itemServiceImpl.updateItemImage(item);
        itemRepository.save(item);
        model.addAttribute("item", itemRepository.findAll());
        return "redirect:Item/List";
    }
    
    @GetMapping("/Item/List")
    public String showList(Model model){
//        Owners owner1 = ownerRepository.findByOwnerEmail(auth.getName());
//        model.addAttribute("Owner", owner1);
//        int ownerId = owner1.getOwnerID();
        model.addAttribute("item", itemService.listAllItem());
        return "owner/item-list";
    }
    @GetMapping("/Item/view/{id}")
    public String showItemDetails(@PathVariable("id") int id, Model model) {
        Item item = itemRepository.findById(id)
            .orElseThrow(() -> new IllegalArgumentException("Invalid item Id:" + id));
        model.addAttribute("item", item);
        return "owner/item-view";
    }
    
    @GetMapping("Item/edit/{id}")
    public String editItem(@PathVariable("id") int id, Model model) {
        Item item = itemRepository.findById(id)
            .orElseThrow(() -> new IllegalArgumentException("Invalid item Id:" + id));
//        Owners owner = ownerRepository.findByOwnerEmail(auth.getName());
        model.addAttribute("item", item);
        return "owner/item-edit";
    }
    
    @PostMapping("Item/update/{id}")
        public String updateStudent(@PathVariable("id") int id, @Valid Item item, BindingResult result,
        Model model) {
        if (result.hasErrors()) {
            item.setItemID(id);
            return "owner/item-list";
        }
        itemRepository.save(item);
//        itemServiceImpl.updateItem(item);
        model.addAttribute("item", itemRepository.findAll());
        return "owner/item-list";
    }
    @GetMapping("Item/delete/{id}")
    public String deleteStudent(@PathVariable("id") int id, Model model) {
        Item item = itemRepository.findById(id)
            .orElseThrow(() -> new IllegalArgumentException("Invalid student Id:" + id));
        itemRepository.delete(item);
        model.addAttribute("item", itemRepository.findAll());
        return "owner/item-list";
    }
    
    @GetMapping("/item-details/{id}")
    public String showItemIndex(@PathVariable("id") int id, Model model) {
        Item item = itemRepository.findById(id)
            .orElseThrow(() -> new IllegalArgumentException("Invalid item Id:" + id));
        model.addAttribute("item", item);
        return "item-view";
    }

}
