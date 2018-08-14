package com.mycompany.sampleapp;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class CommonMasterService {
	private ArrayList<LanguageMasterDto> languageMasterList = new ArrayList<LanguageMasterDto>();
	private LinkedHashMap<String, String> languageMasterData = new LinkedHashMap<String, String>();
	public CommonMasterService() {
		languageMasterData.put("01", "ActionScript");
		languageMasterData.put("02", "BASIC");
		languageMasterData.put("03", "C");
		languageMasterData.put("04", "C++");
		languageMasterData.put("05", "COBOL");
		languageMasterData.put("06", "Erlang");
		languageMasterData.put("07", "Fortran");
		languageMasterData.put("08", "Groovy");
		languageMasterData.put("09", "Haskell");
		languageMasterData.put("10", "Java");
		languageMasterData.put("11", "JavaScript");
		languageMasterData.put("12", "Lisp");
		languageMasterData.put("13", "Perl");
		languageMasterData.put("14", "PHP");
		languageMasterData.put("15", "Python");
		languageMasterData.put("16", "Ruby");
		languageMasterData.put("17", "Scala");
		languageMasterData.put("18", "Scheme");
		
		for(String c : languageMasterData.keySet()) {
			LanguageMasterDto dto = new LanguageMasterDto();
		 	dto.setCode(c);
		 	dto.setValue(languageMasterData.get(c));
			languageMasterList.add(dto);
		}
	}
	

	public List<LanguageMasterDto> findAll(){
			return languageMasterList;
	    }
	
	public LanguageMasterDto find(String code){
		LanguageMasterDto result = new LanguageMasterDto();
		for (LanguageMasterDto d : languageMasterList ) {
			
			if (d.getCode().equals(code)) {
				result = d;
			}
		}
		return result;
    }

	public List<LanguageMasterDto> findLanguage(String value){
		if (value == null || value.length() == 0) {
			return findAll();
		}
		List<LanguageMasterDto> result = new ArrayList<LanguageMasterDto>();
		for (LanguageMasterDto d : languageMasterList ) {
			if (d.getValue().toUpperCase().startsWith(value.toUpperCase())) {
				result.add(d);
			}
		}
		return result;
    }
}
