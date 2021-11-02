/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp.controllers;

import com.ntp.pojos.BenhNhan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.ntp.service.BenhNhanService;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Phat Nguyen
 */
@Controller
public class BenhNhanController {
    @Autowired
    private BenhNhanService benhNhanService;
    
    @GetMapping("/hosobenhnhan")
    public String detail(Model model, 
            @RequestParam(name = "idBN", defaultValue = "0") int idBN){
        if (idBN > 0) // cập nhật
            model.addAttribute("benhnhan", this.benhNhanService.getBenhNhanById(idBN));
        else // thêm
            model.addAttribute("benhnhan", new BenhNhan());

        return "hosobenhnhan";
    }
}
