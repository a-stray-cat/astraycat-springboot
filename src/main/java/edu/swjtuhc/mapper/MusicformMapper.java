package edu.swjtuhc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.swjtuhc.model.MusicForm;

@Mapper
public interface MusicformMapper {
	
	public List<MusicForm> selectallForms();
	
//	public MusicForm selectByformId(int formId,int userId);
	
	public List<MusicForm> selectallByformId(int formId,int userId);
	
}
