package edu.swjtuhc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import edu.swjtuhc.model.Music;
import edu.swjtuhc.service.RankinglistService;

@RestController
@RequestMapping("/rankingList")
public class RankinglistController {
	
	@Autowired
	RankinglistService rankinglistService;
	
	@RequestMapping("/rise")
	public List<Music> getriseList() {
		return rankinglistService.getriseList();
	}
	
	@RequestMapping("/new")
	public List<Music> getnewList() {
		return rankinglistService.getnewList();
	}
}
