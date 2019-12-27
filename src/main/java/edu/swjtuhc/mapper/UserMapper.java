package edu.swjtuhc.mapper;

import org.apache.ibatis.annotations.Mapper;

import edu.swjtuhc.model.SysUser;

@Mapper
public interface UserMapper {
	
	public SysUser selectUserByUsername(String  username);
	
	public SysUser selectAdminByUsername(String  username);
	
	public SysUser selectUserByUsernameAndPass(String username,String userPassword);
	
	public SysUser selectAdminByUsernameAndPass(String adminName,String adminPassword); 
	
	public int insertUser(SysUser user);
}
