package com.ntp.pojos;

import com.ntp.pojos.NhanVien;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2021-11-06T21:32:20", comments="EclipseLink-2.7.7.v20200504-rNA")
@StaticMetamodel(LichTruc.class)
public class LichTruc_ { 

    public static volatile SingularAttribute<LichTruc, String> ngaytruc;
    public static volatile CollectionAttribute<LichTruc, NhanVien> nhanvienCollection;
    public static volatile SingularAttribute<LichTruc, Integer> idlichtruc;

}