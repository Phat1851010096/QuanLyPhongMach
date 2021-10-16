/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp.pojos;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Phat Nguyen
 */
@Entity
@Table(name = "nhanvien")
public class NhanVien implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idNV")
    private Integer idNV;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "tenNV")
    private String tenNV;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 3)
    @Column(name = "gioitinh")
    private String gioitinh;
    @Basic(optional = false)

    @Column(name = "ngaysinh")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ngaysinh;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "diachi")
    private String diachi;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 11)
    @Column(name = "SDT")
    private String sdt;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "emailNV")
    private String emailNV;
    @Size(max = 240)
    @Column(name = "hinhanh")
    private String hinhanh;
    @JoinColumn(name = "idchucvu", referencedColumnName = "idchucvu")
    @ManyToOne
    private ChucVu chucvu;
    @JoinColumn(name = "idlichtruc", referencedColumnName = "idlichtruc")
    @ManyToOne
    private LichTruc lichtruc;
    @JoinColumn(name = "idU", referencedColumnName = "id")
    @ManyToOne
    private User idU;

    
    @Transient
    private MultipartFile file;

    public NhanVien() {
    }

    public NhanVien(Integer idNV) {
        this.idNV = idNV;
    }

    public NhanVien(Integer idNV, String tenNV, String gioitinh, Date ngaysinh, String diachi, String sdt, String emailNV) {
        this.idNV = idNV;
        this.tenNV = tenNV;
        this.gioitinh = gioitinh;
        this.ngaysinh = ngaysinh;
        this.diachi = diachi;
        this.sdt = sdt;
        this.emailNV = emailNV;
    }

    public Integer getIdNV() {
        return idNV;
    }

    public void setIdNV(Integer idNV) {
        this.idNV = idNV;
    }

    public String getTenNV() {
        return tenNV;
    }

    public void setTenNV(String tenNV) {
        this.tenNV = tenNV;
    }

    public String getGioitinh() {
        return gioitinh;
    }

    public void setGioitinh(String gioitinh) {
        this.gioitinh = gioitinh;
    }

    public Date getNgaysinh() {
        return ngaysinh;
    }

    public void setNgaysinh(Date ngaysinh) {
        this.ngaysinh = ngaysinh;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getEmailNV() {
        return emailNV;
    }

    public void setEmailNV(String emailNV) {
        this.emailNV = emailNV;
    }

    public String getHinhanh() {
        return hinhanh;
    }

    public void setHinhanh(String hinhanh) {
        this.hinhanh = hinhanh;
    }

    public ChucVu getChucvu() {
        return chucvu;
    }

    public void setChucvu(ChucVu chucvu) {
        this.chucvu = chucvu;
    }

    public LichTruc getLichtruc() {
        return lichtruc;
    }

    public void setLichtruc(LichTruc lichtruc) {
        this.lichtruc = lichtruc;
    }

    public User getIdU() {
        return idU;
    }

    public void setIdU(User idU) {
        this.idU = idU;
    }

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }
    
    

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idNV != null ? idNV.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NhanVien)) {
            return false;
        }
        NhanVien other = (NhanVien) object;
        if ((this.idNV == null && other.idNV != null) || (this.idNV != null && !this.idNV.equals(other.idNV))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.ntp.pojos.Nhanvien[ idNV=" + idNV + " ]";
    }
    
}
