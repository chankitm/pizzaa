package com.example.pizza.web;

import com.example.pizza.model.ColorObject;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/colorobjects")
@Controller
@RooWebScaffold(path = "colorobjects", formBackingObject = ColorObject.class)
public class ColorObjectController {
}
