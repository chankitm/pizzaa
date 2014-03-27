package com.example.pizza.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(identifierType = ProductGroupKey.class, versionField="", table = "PRODUCT_GROUP")
public class ProductGroup {
    @NotNull
    @Column(name = "DB_SOURCE")
    private String dbSource;
	
    @NotNull
    @Column(name = "SIZE_LABEL_FLAG")
    private String sizeLabelFlag;

    @NotNull
    @Column(name = "SIZE_LABEL")
    private String sizeLabel;

    @NotNull
    @Column(name = "STATUS")
    private String status;

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

    @ManyToOne
    private ColorObject colorObject;

    @ManyToOne
    private ColorSwatch colorSwatch;
}
