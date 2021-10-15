package com.ntp.pojos;

import com.ntp.pojos.User;
import java.util.Date;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2021-10-15T10:00:49", comments="EclipseLink-2.7.7.v20200504-rNA")
@StaticMetamodel(BenhNhan.class)
public class BenhNhan_ { 

    public static volatile SingularAttribute<BenhNhan, String> diachi;
    public static volatile SingularAttribute<BenhNhan, String> sdt;
    public static volatile SingularAttribute<BenhNhan, String> gioitinh;
    public static volatile SingularAttribute<BenhNhan, String> emailBN;
    public static volatile SingularAttribute<BenhNhan, Integer> idBN;
    public static volatile SingularAttribute<BenhNhan, Date> ngaysinh;
    public static volatile SingularAttribute<BenhNhan, String> tenBN;
    public static volatile SingularAttribute<BenhNhan, User> idU;

}