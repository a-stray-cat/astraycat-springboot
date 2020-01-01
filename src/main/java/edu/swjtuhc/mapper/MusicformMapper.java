package edu.swjtuhc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.swjtuhc.model.MusicForm;

@Mapper
public interface MusicformMapper {
	
	public List<MusicForm> selectallForms();
	
	public List<MusicForm> selectallByformId(int formId,int userId);
	
}
