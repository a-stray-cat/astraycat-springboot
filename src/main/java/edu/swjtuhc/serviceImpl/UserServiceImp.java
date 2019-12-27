package edu.swjtuhc.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.swjtuhc.mapper.UserMapper;
import edu.swjtuhc.model.SysUser;
import edu.swjtuhc.service.UserService;

@Service
public class UserServiceImp implements UserService {
	
	@Autowired
	UserMapper userMapper;
	
	@Override
	public int register(SysUser user) {
		// TODO Auto-generated method stub
		SysUser user1 = userMapper.selectUserByUsername(user.getUsername());
		int i = -1;
		if (user1 == null&&user.getUserPassword()!=null&&user.getUserPhonenumber()!=null) {
			userMapper.insertUser(user);
			i = 1;
		} if (user.getUserPassword()==null) {
			i = 3;
		} if (user1!=null) {
			i = 2;
		} if (user.getUserPhonenumber()==null) {
			i = 4;
		}
		return i;
	}

	@Override
	public int login(SysUser user) {
		// TODO Auto-generated method stub
		user.setAdminName(user.getUsername());
		user.setAdminPassword(user.getUserPassword());
		System.out.println(user);
		SysUser user1 = userMapper.selectUserByUsername(user.getUsername());
		SysUser user2 = userMapper.selectAdminByUsername(user.getUsername());
		SysUser user3 = userMapper.selectUserByUsernameAndPass(user.getUsername(), user.getUserPassword());
		System.out.println(user3);
		SysUser user4 = userMapper.selectAdminByUsernameAndPass(user.getUsername(), user.getUserPassword());
		int i = 0;
		if (user2!=null) {
			i = 4;
		} if (user4!=null) {
			i = 2;
		} if (user1!=null) {
			i = 4;
		}  if (user3!=null) {
			i = 1;
		} if (user1==null&&user2==null) {
			i = 3;
		} 
		return i;
	}
	
}