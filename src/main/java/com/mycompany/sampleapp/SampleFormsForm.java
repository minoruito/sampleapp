package com.mycompany.sampleapp;

import javax.validation.Valid;

public class SampleFormsForm {
	@Valid
    private String masterAjaxText;

	public String getMasterAjaxText() {
		return masterAjaxText;
	}

	public void setMasterAjaxText(String masterAjaxText) {
		this.masterAjaxText = masterAjaxText;
	}
	
	
}
