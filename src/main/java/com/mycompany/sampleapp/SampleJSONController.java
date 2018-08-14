package com.mycompany.sampleapp;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Handles requests for the application home page.
 */
@RestController
public class SampleJSONController {
    
    private static final Logger logger = LoggerFactory.getLogger(SampleJSONController.class);
    
    @Autowired
    CommonMasterService service;

    @RequestMapping(value = "/getMasterValueList", method = RequestMethod.GET, produces="application/json")
    public List<LanguageMasterDto> getMasterValueList() {
        logger.info("Start /getMasterValueList");
        List<LanguageMasterDto> masters = service.findAll();
        return masters;
    }

    @RequestMapping(value = "/getMasterValue", method = RequestMethod.GET, produces="application/json")
    public LanguageMasterDto getMasterValue(String code) {
        logger.info("Start /getMasterValue");
        LanguageMasterDto master = service.find(code);
        return master;
    }

    @RequestMapping(value = "/searchMasterValue", method = RequestMethod.GET, produces="application/json")
    public List<LanguageMasterDto> searchMasterValue(String value) {
        logger.info("Start /getMasterValue");
        List<LanguageMasterDto> masters = service.findLanguage(value);
        return masters;
    }

}
