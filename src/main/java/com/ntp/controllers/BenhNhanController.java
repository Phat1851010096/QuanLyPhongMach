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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.ntp.service.BenhNhanService;
import com.ntp.service.ThuocService;
import org.springframework.web.bind.annotation.PathVariable;

/**
 *
 * @author Phat Nguyen
 */
@Controller
public class BenhNhanController {
    @Autowired
    private BenhNhanService benhNhanService;
    
    @GetMapping("/benhnhan/{idBN}")
    public String detail(Model model,@PathVariable(value = "idBN") int idBN){
        model.addAttribute("thuoc", this.benhNhanService.getBenhNhanById(idBN));
        return "hosobenhnhan";
    }
}
