package edu.swjtuhc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import edu.swjtuhc.model.MusicForm;
import edu.swjtuhc.service.MusicformService;


@RestController
@RequestMapping("/musicForm")
public class MusicformController {
	
	@Autowired
	MusicformService musicformService;
	
	@RequestMapping("/getallForms")
	public List<MusicForm> getallForms() {
		return musicformService.getallForms();
	}
	
	@RequestMapping("/musicInfo")
	public List<MusicForm> getFormInfo(@RequestBody MusicForm musicForm) {
		return musicformService.getformInfo(musicForm);
	}
}
