package edu.swjtuhc.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.swjtuhc.mapper.HomepageMapper;
import edu.swjtuhc.model.Rotation;
import edu.swjtuhc.service.HomepageService;

@Service
public class HomepageServiceImp implements HomepageService{
	
	@Autowired
	HomepageMapper homepageMapper;

	@Override
	public List<Rotation> getRotations() {
		// TODO Auto-generated method stub
		return homepageMapper.selectRotations();
	}
	
	
}
