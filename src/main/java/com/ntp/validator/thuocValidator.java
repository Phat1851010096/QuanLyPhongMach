/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp.validator;

import com.ntp.pojos.Thuoc;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author Phat Nguyen
 */
@Component
public class thuocValidator implements Validator{

    @Override
    public boolean supports(Class<?> type) {
        return Thuoc.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
//        Thuoc p = (Thuoc) o;
//        
//        if(!p.getTENTHUOC().contains("NTP")){
//            errors.rejectValue("TENTHUOC", "thuoc.TENTHUOC.errName");
//        }
    }
    
}
