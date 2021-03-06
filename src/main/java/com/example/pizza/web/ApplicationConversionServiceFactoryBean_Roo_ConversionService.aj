// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.example.pizza.web;

import com.example.pizza.domain.Base;
import com.example.pizza.domain.Pizza;
import com.example.pizza.domain.PizzaOrder;
import com.example.pizza.domain.Topping;
import com.example.pizza.model.ColorObject;
import com.example.pizza.model.ColorSwatch;
import com.example.pizza.model.ProductGroup;
import com.example.pizza.model.ProductGroupKey;
import com.example.pizza.web.ApplicationConversionServiceFactoryBean;
import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Base, String> ApplicationConversionServiceFactoryBean.getBaseToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.example.pizza.domain.Base, java.lang.String>() {
            public String convert(Base base) {
                return new StringBuilder().append(base.getName()).toString();
            }
        };
    }
    
    public Converter<Long, Base> ApplicationConversionServiceFactoryBean.getIdToBaseConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.example.pizza.domain.Base>() {
            public com.example.pizza.domain.Base convert(java.lang.Long id) {
                return Base.findBase(id);
            }
        };
    }
    
    public Converter<String, Base> ApplicationConversionServiceFactoryBean.getStringToBaseConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.example.pizza.domain.Base>() {
            public com.example.pizza.domain.Base convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Base.class);
            }
        };
    }
    
    public Converter<Pizza, String> ApplicationConversionServiceFactoryBean.getPizzaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.example.pizza.domain.Pizza, java.lang.String>() {
            public String convert(Pizza pizza) {
                return new StringBuilder().append(pizza.getName()).append(" ").append(pizza.getPrice()).toString();
            }
        };
    }
    
    public Converter<Long, Pizza> ApplicationConversionServiceFactoryBean.getIdToPizzaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.example.pizza.domain.Pizza>() {
            public com.example.pizza.domain.Pizza convert(java.lang.Long id) {
                return Pizza.findPizza(id);
            }
        };
    }
    
    public Converter<String, Pizza> ApplicationConversionServiceFactoryBean.getStringToPizzaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.example.pizza.domain.Pizza>() {
            public com.example.pizza.domain.Pizza convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Pizza.class);
            }
        };
    }
    
    public Converter<PizzaOrder, String> ApplicationConversionServiceFactoryBean.getPizzaOrderToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.example.pizza.domain.PizzaOrder, java.lang.String>() {
            public String convert(PizzaOrder pizzaOrder) {
                return new StringBuilder().append(pizzaOrder.getName()).append(" ").append(pizzaOrder.getAddress()).append(" ").append(pizzaOrder.getTotal()).append(" ").append(pizzaOrder.getDeliveryDate()).toString();
            }
        };
    }
    
    public Converter<Long, PizzaOrder> ApplicationConversionServiceFactoryBean.getIdToPizzaOrderConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.example.pizza.domain.PizzaOrder>() {
            public com.example.pizza.domain.PizzaOrder convert(java.lang.Long id) {
                return PizzaOrder.findPizzaOrder(id);
            }
        };
    }
    
    public Converter<String, PizzaOrder> ApplicationConversionServiceFactoryBean.getStringToPizzaOrderConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.example.pizza.domain.PizzaOrder>() {
            public com.example.pizza.domain.PizzaOrder convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), PizzaOrder.class);
            }
        };
    }
    
    public Converter<Topping, String> ApplicationConversionServiceFactoryBean.getToppingToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.example.pizza.domain.Topping, java.lang.String>() {
            public String convert(Topping topping) {
                return new StringBuilder().append(topping.getName()).toString();
            }
        };
    }
    
    public Converter<Long, Topping> ApplicationConversionServiceFactoryBean.getIdToToppingConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.example.pizza.domain.Topping>() {
            public com.example.pizza.domain.Topping convert(java.lang.Long id) {
                return Topping.findTopping(id);
            }
        };
    }
    
    public Converter<String, Topping> ApplicationConversionServiceFactoryBean.getStringToToppingConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.example.pizza.domain.Topping>() {
            public com.example.pizza.domain.Topping convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Topping.class);
            }
        };
    }
    
    public Converter<ColorObject, String> ApplicationConversionServiceFactoryBean.getColorObjectToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.example.pizza.model.ColorObject, java.lang.String>() {
            public String convert(ColorObject colorObject) {
                return new StringBuilder().append(colorObject.getColorValue()).append(" ").append(colorObject.getImagePath()).append(" ").append(colorObject.getRmsColorCode()).append(" ").append(colorObject.getRemarks()).toString();
            }
        };
    }
    
    public Converter<Long, ColorObject> ApplicationConversionServiceFactoryBean.getIdToColorObjectConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.example.pizza.model.ColorObject>() {
            public com.example.pizza.model.ColorObject convert(java.lang.Long id) {
                return ColorObject.findColorObject(id);
            }
        };
    }
    
    public Converter<String, ColorObject> ApplicationConversionServiceFactoryBean.getStringToColorObjectConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.example.pizza.model.ColorObject>() {
            public com.example.pizza.model.ColorObject convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), ColorObject.class);
            }
        };
    }
    
    public Converter<ColorSwatch, String> ApplicationConversionServiceFactoryBean.getColorSwatchToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.example.pizza.model.ColorSwatch, java.lang.String>() {
            public String convert(ColorSwatch colorSwatch) {
                return new StringBuilder().append(colorSwatch.getLocale()).append(" ").append(colorSwatch.getDisplayName()).append(" ").append(colorSwatch.getCountryCode()).append(" ").append(colorSwatch.getCreateDate()).toString();
            }
        };
    }
    
    public Converter<Long, ColorSwatch> ApplicationConversionServiceFactoryBean.getIdToColorSwatchConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.example.pizza.model.ColorSwatch>() {
            public com.example.pizza.model.ColorSwatch convert(java.lang.Long id) {
                return ColorSwatch.findColorSwatch(id);
            }
        };
    }
    
    public Converter<String, ColorSwatch> ApplicationConversionServiceFactoryBean.getStringToColorSwatchConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.example.pizza.model.ColorSwatch>() {
            public com.example.pizza.model.ColorSwatch convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), ColorSwatch.class);
            }
        };
    }
    
    public Converter<ProductGroup, String> ApplicationConversionServiceFactoryBean.getProductGroupToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.example.pizza.model.ProductGroup, java.lang.String>() {
            public String convert(ProductGroup productGroup) {
                return new StringBuilder().append(productGroup.getDbSource()).append(" ").append(productGroup.getSizeLabelFlag()).append(" ").append(productGroup.getSizeLabel()).append(" ").append(productGroup.getStatus()).toString();
            }
        };
    }
    
    public Converter<ProductGroupKey, ProductGroup> ApplicationConversionServiceFactoryBean.getIdToProductGroupConverter() {
        return new org.springframework.core.convert.converter.Converter<com.example.pizza.model.ProductGroupKey, com.example.pizza.model.ProductGroup>() {
            public com.example.pizza.model.ProductGroup convert(com.example.pizza.model.ProductGroupKey id) {
                return ProductGroup.findProductGroup(id);
            }
        };
    }
    
    public Converter<String, ProductGroup> ApplicationConversionServiceFactoryBean.getStringToProductGroupConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.example.pizza.model.ProductGroup>() {
            public com.example.pizza.model.ProductGroup convert(String id) {
                return getObject().convert(getObject().convert(id, ProductGroupKey.class), ProductGroup.class);
            }
        };
    }
    
    public Converter<String, ProductGroupKey> ApplicationConversionServiceFactoryBean.getJsonToProductGroupKeyConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.example.pizza.model.ProductGroupKey>() {
            public ProductGroupKey convert(String encodedJson) {
                return ProductGroupKey.fromJsonToProductGroupKey(new String(Base64.decodeBase64(encodedJson)));
            }
        };
    }
    
    public Converter<ProductGroupKey, String> ApplicationConversionServiceFactoryBean.getProductGroupKeyToJsonConverter() {
        return new org.springframework.core.convert.converter.Converter<com.example.pizza.model.ProductGroupKey, java.lang.String>() {
            public String convert(ProductGroupKey productGroupKey) {
                return Base64.encodeBase64URLSafeString(productGroupKey.toJson().getBytes());
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getBaseToStringConverter());
        registry.addConverter(getIdToBaseConverter());
        registry.addConverter(getStringToBaseConverter());
        registry.addConverter(getPizzaToStringConverter());
        registry.addConverter(getIdToPizzaConverter());
        registry.addConverter(getStringToPizzaConverter());
        registry.addConverter(getPizzaOrderToStringConverter());
        registry.addConverter(getIdToPizzaOrderConverter());
        registry.addConverter(getStringToPizzaOrderConverter());
        registry.addConverter(getToppingToStringConverter());
        registry.addConverter(getIdToToppingConverter());
        registry.addConverter(getStringToToppingConverter());
        registry.addConverter(getColorObjectToStringConverter());
        registry.addConverter(getIdToColorObjectConverter());
        registry.addConverter(getStringToColorObjectConverter());
        registry.addConverter(getColorSwatchToStringConverter());
        registry.addConverter(getIdToColorSwatchConverter());
        registry.addConverter(getStringToColorSwatchConverter());
        registry.addConverter(getProductGroupToStringConverter());
        registry.addConverter(getIdToProductGroupConverter());
        registry.addConverter(getStringToProductGroupConverter());
        registry.addConverter(getJsonToProductGroupKeyConverter());
        registry.addConverter(getProductGroupKeyToJsonConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
