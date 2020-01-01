package edu.swjtuhc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import edu.swjtuhc.model.MusicForm;
import edu.swjtuhc.model.Rotation;
import edu.swjtuhc.service.HomepageService;

@RestController
@RequestMapping("/homepage")
public class HomepageController {
	
	@Autowired
	HomepageService homepageService;
	
	@RequestMapping("/rotation")
	public List<Rotation> getRotations() {
		return homepageService.getRotations();
	}
	
	@RequestMapping("/musicForm")
	public List<MusicForm> gethomepageForm() {
		return homepageService.gethomepageForm();
	}
	
	@RequestMapping("/videoForm")
	public List<MusicForm> gethvideoForm() {
		return homepageService.gethvideoForm();
	}
}
