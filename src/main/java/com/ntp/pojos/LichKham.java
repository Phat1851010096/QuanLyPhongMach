/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp.pojos;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Phat Nguyen
 */
@Entity
@Table(name = "lichkham")
public class LichKham implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idLK")
    private int idLK;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "tenLK")
    private String tenLK;
    @Size(max = 240)
    @Column(name = "ghichu")
    private String ghichu;
    @Column(name = "ngaydangky")
    private String ngaydangky;
    
    @JoinColumn(name = "idBN", referencedColumnName = "idBN")
    @ManyToOne
    private BenhNhan benhnhan;
    
    @JoinColumn(name = "idNV", referencedColumnName = "idNV")
    @ManyToOne
    private NhanVien nhanvien;

    @JoinColumn(name = "idgiokham", referencedColumnName = "idgiokham")
    @ManyToOne
    private GioKham giokham;
    
    @OneToMany(mappedBy = "lichkham")
    private Collection<User> userCollection;
    
    public LichKham() {
    }

    public LichKham(int idLK) {
        this.idLK = idLK;
    }

    public LichKham(int idLK, String tenLK) {
        this.idLK = idLK;
        this.tenLK = tenLK;
    }

    public int getIdLK() {
        return idLK;
    }

    public void setIdLK(int idLK) {
        this.idLK = idLK;
    }

    public String getTenLK() {
        return tenLK;
    }

    public void setTenLK(String tenLK) {
        this.tenLK = tenLK;
    }

    public String getGhichu() {
        return ghichu;
    }

    public void setGhichu(String ghichu) {
        this.ghichu = ghichu;
    }

    public String getNgaydangky() {
        return ngaydangky;
    }

    public void setNgaydangky(String ngaydangky) {
        this.ngaydangky = ngaydangky;
    }

    public BenhNhan getBenhnhan() {
        return benhnhan;
    }

    public void setBenhnhan(BenhNhan benhnhan) {
        this.benhnhan = benhnhan;
    }

    public NhanVien getNhanvien() {
        return nhanvien;
    }

    public void setNhanvien(NhanVien nhanvien) {
        this.nhanvien = nhanvien;
    }

    public GioKham getGiokham() {
        return giokham;
    }

    public void setGiokham(GioKham giokham) {
        this.giokham = giokham;
    }

    public Collection<User> getUserCollection() {
        return userCollection;
    }

    public void setUserCollection(Collection<User> userCollection) {
        this.userCollection = userCollection;
    }
    
}
