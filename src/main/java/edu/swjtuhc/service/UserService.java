package edu.swjtuhc.service;

import java.util.List;

import edu.swjtuhc.model.SysUser;
import edu.swjtuhc.model.MusicForm;

public interface UserService {
	
	public int register(SysUser user);
	
	public int login(SysUser user);
	
	public List<MusicForm> getList();
}
