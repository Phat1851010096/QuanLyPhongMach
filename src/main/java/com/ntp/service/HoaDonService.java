/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp.service;

import com.ntp.pojos.ToaThuoc;
import java.util.Map;

/**
 *
 * @author Phat Nguyen
 */
public interface HoaDonService {
    boolean addHoaDon(Map<Integer, ToaThuoc> toathuoc);
}
