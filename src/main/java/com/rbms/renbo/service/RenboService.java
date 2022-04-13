/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rbms.renbo.service;

import com.rbms.renbo.model.Renbo;

/**
 *
 * @author Syafiqah Nabilah
 */
public interface RenboService {
    Renbo findByEmail(String email);
    Renbo save(Renbo renbo);
}
