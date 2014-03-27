package com.example.pizza.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ManyToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;


@RooJavaBean
@RooToString
@RooJpaActiveRecord(versionField="", table = "COLOR_SWATCH")
public class ColorSwatch {
    
	@Column(name = "LOCALE")
    private String locale;

    @Column(name = "DISPLAY_NAME")
    private String displayName;
    
    @Column(name = "COUNTRY_CODE")
    private String countryCode;

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

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<ColorObject> colorObjects = new HashSet<ColorObject>();
}
