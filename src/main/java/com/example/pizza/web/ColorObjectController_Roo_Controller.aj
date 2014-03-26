// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.example.pizza.web;

import com.example.pizza.model.ColorObject;
import com.example.pizza.model.ColorObjectKey;
import com.example.pizza.web.ColorObjectController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.core.convert.ConversionService;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect ColorObjectController_Roo_Controller {
    
    private ConversionService ColorObjectController.conversionService;
    
    @Autowired
    public ColorObjectController.new(ConversionService conversionService) {
        super();
        this.conversionService = conversionService;
    }

    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String ColorObjectController.create(@Valid ColorObject colorObject, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, colorObject);
            return "colorobjects/create";
        }
        uiModel.asMap().clear();
        colorObject.persist();
        return "redirect:/colorobjects/" + encodeUrlPathSegment(conversionService.convert(colorObject.getId(), String.class), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String ColorObjectController.createForm(Model uiModel) {
        populateEditForm(uiModel, new ColorObject());
        return "colorobjects/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String ColorObjectController.show(@PathVariable("id") ColorObjectKey id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("colorobject", ColorObject.findColorObject(id));
        uiModel.addAttribute("itemId", conversionService.convert(id, String.class));
        return "colorobjects/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String ColorObjectController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("colorobjects", ColorObject.findColorObjectEntries(firstResult, sizeNo));
            float nrOfPages = (float) ColorObject.countColorObjects() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("colorobjects", ColorObject.findAllColorObjects());
        }
        addDateTimeFormatPatterns(uiModel);
        return "colorobjects/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String ColorObjectController.update(@Valid ColorObject colorObject, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, colorObject);
            return "colorobjects/update";
        }
        uiModel.asMap().clear();
        colorObject.merge();
        return "redirect:/colorobjects/" + encodeUrlPathSegment(conversionService.convert(colorObject.getId(), String.class), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String ColorObjectController.updateForm(@PathVariable("id") ColorObjectKey id, Model uiModel) {
        populateEditForm(uiModel, ColorObject.findColorObject(id));
        return "colorobjects/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String ColorObjectController.delete(@PathVariable("id") ColorObjectKey id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        ColorObject colorObject = ColorObject.findColorObject(id);
        colorObject.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/colorobjects";
    }
    
    void ColorObjectController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("colorObject_createdate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("colorObject_lastupddate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void ColorObjectController.populateEditForm(Model uiModel, ColorObject colorObject) {
        uiModel.addAttribute("colorObject", colorObject);
        addDateTimeFormatPatterns(uiModel);
    }
    
    String ColorObjectController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
