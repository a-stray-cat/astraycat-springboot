package edu.swjtuhc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.swjtuhc.model.Rotation;

@Mapper
public interface HomepageMapper {
	public List<Rotation> selectRotations();
}
