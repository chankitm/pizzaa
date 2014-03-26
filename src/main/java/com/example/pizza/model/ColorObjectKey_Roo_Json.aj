// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.example.pizza.model;

import com.example.pizza.model.ColorObjectKey;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect ColorObjectKey_Roo_Json {
    
    public String ColorObjectKey.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static ColorObjectKey ColorObjectKey.fromJsonToColorObjectKey(String json) {
        return new JSONDeserializer<ColorObjectKey>().use(null, ColorObjectKey.class).deserialize(json);
    }
    
    public static String ColorObjectKey.toJsonArray(Collection<ColorObjectKey> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<ColorObjectKey> ColorObjectKey.fromJsonArrayToColorObjectKeys(String json) {
        return new JSONDeserializer<List<ColorObjectKey>>().use(null, ArrayList.class).use("values", ColorObjectKey.class).deserialize(json);
    }
    
}