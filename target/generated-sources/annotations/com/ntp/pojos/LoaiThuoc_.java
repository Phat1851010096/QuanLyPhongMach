package com.ntp.pojos;

import com.ntp.pojos.Thuoc;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2021-11-06T21:32:20", comments="EclipseLink-2.7.7.v20200504-rNA")
@StaticMetamodel(LoaiThuoc.class)
public class LoaiThuoc_ { 

    public static volatile SingularAttribute<LoaiThuoc, Integer> idloaithuoc;
    public static volatile ListAttribute<LoaiThuoc, Thuoc> thuocCollection;
    public static volatile SingularAttribute<LoaiThuoc, String> tenloaithuoc;

}