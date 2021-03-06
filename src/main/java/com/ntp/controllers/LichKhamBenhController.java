/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp.controllers;

import com.ntp.service.BenhNhanService;
import com.ntp.service.LichKhamService;
import com.ntp.service.NhanVienService;
import com.ntp.service.UserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Phat Nguyen
 */
@Controller
public class LichKhamBenhController {
    
    @Autowired
    private BenhNhanService benhNhanService;
    @Autowired
    private NhanVienService nhanVienService;
    @Autowired
    private LichKhamService lichKhamService;
    @Autowired
    private UserService userService;
    
    @GetMapping("/lichkhambenhnhan")
    public String lichkhambenhView(Model model){

            model.addAttribute("dangky", this.lichKhamService.getLichKham());

        return "lichkhambenhnhan";
    }
    
    @GetMapping("/lichkhamcanhan")
    public String lichkhamcanhanView(Model model,
            @RequestParam(name = "idBN", defaultValue = "0") int idBN,
            @RequestParam(name = "idLK", defaultValue = "0") int idLK){

            model.addAttribute("dangkykham", this.benhNhanService.getBenhNhanById(idBN));
            model.addAttribute("dangkykham", this.lichKhamService.getLichKhamById(idBN));

        return "lichkhamcanhan";
    }
}
