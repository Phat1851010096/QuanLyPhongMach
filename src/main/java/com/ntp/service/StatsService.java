/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp.service;

import java.util.Date;
import java.util.List;

/**
 *
 * @author Phat Nguyen
 */
public interface StatsService {
    int benhNhanStats();
    List<Object[]> doanhThuStats(String kw, Date fromDate, Date toDate);
    List<Object[]> doanhThuMonthStats(String kw, Date fromDate, Date toDate);
}
