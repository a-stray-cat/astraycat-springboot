package edu.swjtuhc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.swjtuhc.model.SysUser;
import edu.swjtuhc.model.MusicForm;

@Mapper
public interface UserMapper {
	
	public SysUser selectUserByUsername(String  username);
	
	public SysUser selectAdminByUsername(String  username);
	
	public SysUser selectUserByUsernameAndPass(String username,String userPassword);
	
	public SysUser selectAdminByUsernameAndPass(String adminName,String adminPassword); 
	
	public List<MusicForm> selectList();
	
	public int insertUser(SysUser user);
}
