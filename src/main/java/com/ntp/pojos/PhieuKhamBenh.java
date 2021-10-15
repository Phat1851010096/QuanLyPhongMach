/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp.pojos;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Phat Nguyen
 */
@Entity
@Table(name = "phieukhambenh")
public class PhieuKhamBenh implements Serializable {

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "phieuKhamBenh")
    private Collection<HoaDonKhamBenh> hoadonkhambenhCollection;


    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idPKB")
    private int idPKB;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "tenPKB")
    private String tenPKB;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 240)
    @Column(name = "trieuchung")
    private String trieuchung;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 240)
    @Column(name = "chandoan")
    private String chandoan;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "ngaykham")
    private String ngaykham;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "lichhen")
    private String lichhen;
    @Lob
    @Size(max = 2147483647)
    @Column(name = "ghichu")
    private String ghichu;
    @Size(max = 240)
    @Column(name = "hinhanh")
    private String hinhanh;
    @JoinColumns({
        @JoinColumn(name = "benhnhan_id", referencedColumnName = "idBN")})
    @ManyToOne(optional = false)
    private BenhNhan benhNhan;
    @JoinColumns({
        @JoinColumn(name = "nhanvien_id", referencedColumnName = "idNV")})
    @ManyToOne(optional = false)
    private NhanVien idNV;

    public PhieuKhamBenh() {
    }

    public PhieuKhamBenh(int idPKB) {
        this.idPKB = idPKB;
    }

    public PhieuKhamBenh(int idPKB, String tenPKB, String trieuchung, String chandoan, String ngaykham, String lichhen) {
        this.idPKB = idPKB;
        this.tenPKB = tenPKB;
        this.trieuchung = trieuchung;
        this.chandoan = chandoan;
        this.ngaykham = ngaykham;
        this.lichhen = lichhen;
    }

    public int getIdPKB() {
        return idPKB;
    }

    public void setIdPKB(int idPKB) {
        this.idPKB = idPKB;
    }

    public String getTenPKB() {
        return tenPKB;
    }

    public void setTenPKB(String tenPKB) {
        this.tenPKB = tenPKB;
    }

    public String getTrieuchung() {
        return trieuchung;
    }

    public void setTrieuchung(String trieuchung) {
        this.trieuchung = trieuchung;
    }

    public String getChandoan() {
        return chandoan;
    }

    public void setChandoan(String chandoan) {
        this.chandoan = chandoan;
    }

    public String getNgaykham() {
        return ngaykham;
    }

    public void setNgaykham(String ngaykham) {
        this.ngaykham = ngaykham;
    }

    public String getLichhen() {
        return lichhen;
    }

    public void setLichhen(String lichhen) {
        this.lichhen = lichhen;
    }

    public String getGhichu() {
        return ghichu;
    }

    public void setGhichu(String ghichu) {
        this.ghichu = ghichu;
    }

    public String getHinhanh() {
        return hinhanh;
    }

    public void setHinhanh(String hinhanh) {
        this.hinhanh = hinhanh;
    }

    public BenhNhan getBenhNhan() {
        return benhNhan;
    }

    public void setBenhNhan(BenhNhan benhNhan) {
        this.benhNhan = benhNhan;
    }

    public NhanVien getIdNV() {
        return idNV;
    }

    public void setIdNV(NhanVien idNV) {
        this.idNV = idNV;
    }

    @XmlTransient
    public Collection<HoaDonKhamBenh> getHoadonkhambenhCollection() {
        return hoadonkhambenhCollection;
    }

    public void setHoadonkhambenhCollection(Collection<HoaDonKhamBenh> hoadonkhambenhCollection) {
        this.hoadonkhambenhCollection = hoadonkhambenhCollection;
    }

    
}
