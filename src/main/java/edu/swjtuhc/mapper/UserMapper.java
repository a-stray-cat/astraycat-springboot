package edu.swjtuhc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.swjtuhc.model.music_form;

@Mapper
public interface UserMapper {
	public List<music_form> selectAllForms();
}
