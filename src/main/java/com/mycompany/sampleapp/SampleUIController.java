package com.mycompany.sampleapp;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class SampleUIController {
    
    private static final Logger logger = LoggerFactory.getLogger(SampleUIController.class);
    
    @Autowired
    CommonMasterService service;

    /**
     * Simply selects the home view to render by returning its name.
     */
    @GetMapping("/")
    public String homes() {
        logger.info("Start Home.");
        return "sample_home";
    }

    @GetMapping("/forms")
    public String forms(Model model) {
        logger.info("Start Forms.");

        SampleFormsForm form = new SampleFormsForm();
        model.addAttribute("sampleFormsForm", form);
        
        return "sample_forms";
    }
    
    @GetMapping("/popups")
    public String popups() {
        logger.info("Start Popups.");
        return "sample_popups";
    }    

    @GetMapping("/tables")
    public String tables(Model model) {
        logger.info("Start Tables.");
        
        SampleTablesForm form = new SampleTablesForm();
        List<LanguageMasterDto> list = service.findAll();
        form.setRows(list);
        
        model.addAttribute("sampleTablesForm", form);
        
        return "sample_tables";
    }    
}
