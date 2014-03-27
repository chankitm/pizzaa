package com.example.pizza.model;

import javax.persistence.Column;

import org.springframework.roo.addon.equals.RooEquals;
import org.springframework.roo.addon.jpa.identifier.RooIdentifier;
import org.springframework.roo.addon.tostring.RooToString;

@RooToString
@RooEquals
@RooIdentifier
public final class ProductGroupKey {

    @Column(name = "PRODUCT_GROUP_ID")
    private String productGroupId;

    @Column(name = "ATG_PRODUCT_ID")
    private String atgProductId;
}
