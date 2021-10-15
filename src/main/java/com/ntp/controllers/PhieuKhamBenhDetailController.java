/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp.controllers;

import com.ntp.service.PhieuKhamBenhService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

/**
 *
 * @author Phat Nguyen
 */
@Controller
public class PhieuKhamBenhDetailController {
    @Autowired
    private PhieuKhamBenhService phieuKhamBenhService;
    
    @GetMapping("/phieukhambenh/{idPKB}")
    public String detail(Model model,@PathVariable(value = "idPKB") int idPKB){
        model.addAttribute("phieukhambenh", this.phieuKhamBenhService.getPhieuKhamBenhById(idPKB));
        return "phieukhambenh-detail";
    }
}
