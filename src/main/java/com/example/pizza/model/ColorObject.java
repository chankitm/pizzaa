package com.example.pizza.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(identifierType = ColorObjectKey.class, table = "COLOR_OBJECT")
public class ColorObject {

    @Column(name = "COLOR_VALUE")
    private String colorValue;

    @Column(name = "IMAGE_PATH")
    private String imagePath;

    @Column(name = "RMS_COLOR_CODE")
    private String rmsColorCode;

    @Column(name = "REMARKS")
    private String remarks;

    @Column(name = "CREATE_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date createDate;

    @Column(name = "LAST_UPD_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date lastUpdDate;

    @Column(name = "LAST_UPD_USR")
    private String lastUpdUsr;

    @NotNull
    @Column(name = "STATUS")
    private String status;
}
