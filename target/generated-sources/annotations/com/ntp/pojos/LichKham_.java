package com.ntp.pojos;

import com.ntp.pojos.BenhNhan;
import com.ntp.pojos.GioKham;
import com.ntp.pojos.NhanVien;
import com.ntp.pojos.User;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2021-10-30T09:48:31", comments="EclipseLink-2.7.7.v20200504-rNA")
@StaticMetamodel(LichKham.class)
public class LichKham_ { 

    public static volatile SingularAttribute<LichKham, String> ghichu;
    public static volatile SingularAttribute<LichKham, NhanVien> nhanvien;
    public static volatile CollectionAttribute<LichKham, User> userCollection;
    public static volatile SingularAttribute<LichKham, Integer> idLK;
    public static volatile SingularAttribute<LichKham, GioKham> giokham;
    public static volatile SingularAttribute<LichKham, String> tenLK;
    public static volatile SingularAttribute<LichKham, BenhNhan> benhnhan;
    public static volatile SingularAttribute<LichKham, String> ngaydangky;

}