// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.example.pizza.model;

import com.example.pizza.model.ColorObject;
import com.example.pizza.model.ColorSwatch;
import com.example.pizza.model.ProductGroup;
import java.util.Date;

privileged aspect ProductGroup_Roo_JavaBean {
    
    public String ProductGroup.getDbSource() {
        return this.dbSource;
    }
    
    public void ProductGroup.setDbSource(String dbSource) {
        this.dbSource = dbSource;
    }
    
    public String ProductGroup.getSizeLabelFlag() {
        return this.sizeLabelFlag;
    }
    
    public void ProductGroup.setSizeLabelFlag(String sizeLabelFlag) {
        this.sizeLabelFlag = sizeLabelFlag;
    }
    
    public String ProductGroup.getSizeLabel() {
        return this.sizeLabel;
    }
    
    public void ProductGroup.setSizeLabel(String sizeLabel) {
        this.sizeLabel = sizeLabel;
    }
    
    public String ProductGroup.getStatus() {
        return this.status;
    }
    
    public void ProductGroup.setStatus(String status) {
        this.status = status;
    }
    
    public Date ProductGroup.getCreateDate() {
        return this.createDate;
    }
    
    public void ProductGroup.setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
    
    public Date ProductGroup.getLastUpdDate() {
        return this.lastUpdDate;
    }
    
    public void ProductGroup.setLastUpdDate(Date lastUpdDate) {
        this.lastUpdDate = lastUpdDate;
    }
    
    public String ProductGroup.getLastUpdUsr() {
        return this.lastUpdUsr;
    }
    
    public void ProductGroup.setLastUpdUsr(String lastUpdUsr) {
        this.lastUpdUsr = lastUpdUsr;
    }
    
    public ColorObject ProductGroup.getColorObject() {
        return this.colorObject;
    }
    
    public void ProductGroup.setColorObject(ColorObject colorObject) {
        this.colorObject = colorObject;
    }
    
    public ColorSwatch ProductGroup.getColorSwatch() {
        return this.colorSwatch;
    }
    
    public void ProductGroup.setColorSwatch(ColorSwatch colorSwatch) {
        this.colorSwatch = colorSwatch;
    }
    
}