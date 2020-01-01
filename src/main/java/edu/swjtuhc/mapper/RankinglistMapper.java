package edu.swjtuhc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.swjtuhc.model.Music;

@Mapper
public interface RankinglistMapper {
	
	public List<Music> selectriseList();
	
	public List<Music> selectnewList();
	
	public List<Music> selecthotList();
}
