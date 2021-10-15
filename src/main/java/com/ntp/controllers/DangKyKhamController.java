/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author Phat Nguyen
 */
@Controller
public class DangKyKhamController {
    @GetMapping("/dangkykham")
    public String dangkykham(){
        return "dangkykham";
    }
}
