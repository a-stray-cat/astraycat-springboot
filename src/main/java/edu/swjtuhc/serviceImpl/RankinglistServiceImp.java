package edu.swjtuhc.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.swjtuhc.mapper.RankinglistMapper;
import edu.swjtuhc.model.Music;
import edu.swjtuhc.service.RankinglistService;

@Service
public class RankinglistServiceImp implements RankinglistService{
	
	@Autowired
	RankinglistMapper rankinglistMapper;

	@Override
	public List<Music> getriseList() {
		// TODO Auto-generated method stub
		return rankinglistMapper.selectriseList();
	}
	
	
}
