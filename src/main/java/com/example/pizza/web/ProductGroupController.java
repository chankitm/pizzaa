package com.example.pizza.web;

import com.example.pizza.model.ProductGroup;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/productgroups")
@Controller
@RooWebScaffold(path = "productgroups", formBackingObject = ProductGroup.class)
public class ProductGroupController {
}
