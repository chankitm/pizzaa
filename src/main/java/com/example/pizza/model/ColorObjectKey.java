package com.example.pizza.model;

import javax.persistence.Column;
import org.springframework.roo.addon.equals.RooEquals;
import org.springframework.roo.addon.jpa.identifier.RooIdentifier;
import org.springframework.roo.addon.tostring.RooToString;

@RooToString
@RooEquals
@RooIdentifier
public final class ColorObjectKey {

    @Column(name = "COLOR_OBJECT_ID")
    private String colorObjectId;

    @Column(name = "COLOR_OBJECT_LOCALE")
    private String colorObjectLocale;

    @Column(name = "COLOR_OBJECT_DISPLAY_NAME")
    private String colorObjectDisplayName;
}
