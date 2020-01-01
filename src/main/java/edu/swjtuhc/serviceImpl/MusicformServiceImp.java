package edu.swjtuhc.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.swjtuhc.mapper.MusicformMapper;
import edu.swjtuhc.model.MusicForm;
import edu.swjtuhc.service.MusicformService;

@Service
public class MusicformServiceImp implements MusicformService{
	
	@Autowired
	MusicformMapper musicformMapper;
	
	@Override
	public List<MusicForm> getallForms() {
		// TODO Auto-generated method stub
		return musicformMapper.selectallForms();
	}
	
}
