/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp.service.impl;

import com.cloudinary.Cloudinary;
import com.ntp.pojos.PhieuKhamBenh;
import com.ntp.repository.PhieuKhamBenhRepository;
import com.ntp.service.PhieuKhamBenhService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Phat Nguyen
 */
@Service
public class PhieuKhamBenhServiceImpl implements PhieuKhamBenhService{
    @Autowired
    private PhieuKhamBenhRepository phieuKhamBenhRepository;

    @Override
    public List<PhieuKhamBenh> getPhieuKhamBenh(String kw, int page) {
        return this.phieuKhamBenhRepository.getPhieuKhamBenh(kw, page);
    }

    @Override
    public PhieuKhamBenh getPhieuKhamBenhById(int id) {
        return this.phieuKhamBenhRepository.getPhieuKhamBenhById(id);
    }

    @Override
    public int countPhieuKhamBenh() {
        return this.phieuKhamBenhRepository.countPhieuKhamBenh();
    }
    
}
