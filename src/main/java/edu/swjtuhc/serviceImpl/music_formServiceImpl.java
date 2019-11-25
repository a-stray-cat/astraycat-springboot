package edu.swjtuhc.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.swjtuhc.mapper.UserMapper;
import edu.swjtuhc.model.music_form;
import edu.swjtuhc.service.music_formService;

@Service
public class music_formServiceImpl implements music_formService{
	
	@Autowired
	UserMapper userMapper;
	
	@Override
	public List<music_form> getForms() {
		// TODO Auto-generated method stub
		return userMapper.selectAllForms();
	}

}
