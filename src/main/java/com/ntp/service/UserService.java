/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp.service;

import com.ntp.pojos.BenhNhan;
import com.ntp.pojos.User;
import java.util.List;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 *
 * @author Phat Nguyen
 */
public interface UserService extends UserDetailsService{
    boolean addUser(User user);
    boolean addBenhNhan(BenhNhan benhnhan);
    List<User> getUsers(String username);
    User getUserById(int id);
}