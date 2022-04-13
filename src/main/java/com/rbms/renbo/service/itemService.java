/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rbms.renbo.service;

import com.rbms.renbo.model.Item;
import java.util.List;

/**
 *
 * @author Syafiqah Nabilah
 */
public interface itemService {
    List<Item> listAllItem();
    List<Item> listAllOwnerItem(int ownerId);
    Item updateItem(Item item);
    Item updateItemImage(Item item);
}
