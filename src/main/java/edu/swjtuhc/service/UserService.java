package edu.swjtuhc.service;

import edu.swjtuhc.model.SysUser;

public interface UserService {
	public int register(SysUser user);
	
	public int login(SysUser user);
}
