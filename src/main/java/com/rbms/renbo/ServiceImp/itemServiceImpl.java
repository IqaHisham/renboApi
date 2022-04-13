/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rbms.renbo.ServiceImp;

import com.rbms.renbo.model.Item;
import com.rbms.renbo.repository.itemRepository;
import com.rbms.renbo.service.itemService;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Syafiqah Nabilah
 */
@Service
public class itemServiceImpl implements itemService{
    @Autowired
    private itemRepository itemRepository;
        
    @Override
    public List<Item> listAllOwnerItem(int ownerId) {
       
       return itemRepository.findAll(ownerId);
    }

    @Override
    public Item updateItem(Item item) {
        Item itemUpdate = new Item();
        itemUpdate.setItemID(item.getItemID());
        return itemRepository.save(item);
    }

    @Override
    public Item updateItemImage(Item item) {
        Item itemDetails = new Item();
        itemDetails.setItemID(item.getItemID());
        itemDetails.setItemImage_1(item.getItemImage_1());
        itemDetails.setItemImage_2(item.getItemImage_2());
        itemDetails.setItemImage_3(item.getItemImage_3());
        return itemRepository.save(itemDetails);
        
    }

    @Override
    public List<Item> listAllItem() {
        return itemRepository.findAll();
    }

}
