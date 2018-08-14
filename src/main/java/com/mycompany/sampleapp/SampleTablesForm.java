package com.mycompany.sampleapp;

import java.util.List;

import javax.validation.Valid;

public class SampleTablesForm {
	@Valid
    private List<LanguageMasterDto> rows;

	public List<LanguageMasterDto> getRows() {
		return rows;
	}

	public void setRows(List<LanguageMasterDto> rows) {
		this.rows = rows;
	}
	
	
}
