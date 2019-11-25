package edu.swjtuhc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import edu.swjtuhc.model.music_form;
import edu.swjtuhc.service.music_formService;

@RestController
@RequestMapping("/user/music_form")
public class music_formController {
	
	@Autowired
	music_formService music_formService;
	
	@RequestMapping("/getAll")
	public List<music_form> getAll() {
		return music_formService.getForms();
	}
}
