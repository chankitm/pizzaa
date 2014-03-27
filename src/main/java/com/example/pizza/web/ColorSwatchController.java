package com.example.pizza.web;

import com.example.pizza.model.ColorSwatch;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/colorswatches")
@Controller
@RooWebScaffold(path = "colorswatches", formBackingObject = ColorSwatch.class)
public class ColorSwatchController {
}
