// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.example.pizza.model;

import com.example.pizza.model.ProductGroup;
import com.example.pizza.model.ProductGroupKey;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect ProductGroup_Roo_Jpa_Entity {
    
    declare @type: ProductGroup: @Entity;
    
    declare @type: ProductGroup: @Table(name = "PRODUCT_GROUP");
    
    @EmbeddedId
    private ProductGroupKey ProductGroup.id;
    
    public ProductGroupKey ProductGroup.getId() {
        return this.id;
    }
    
    public void ProductGroup.setId(ProductGroupKey id) {
        this.id = id;
    }
    
}