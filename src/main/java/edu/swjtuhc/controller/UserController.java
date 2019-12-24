package edu.swjtuhc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import edu.swjtuhc.model.SysUser;
import edu.swjtuhc.service.UserService;
import net.sf.json.JSONObject;

@RestController
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/register")
	public JSONObject register(@RequestBody SysUser user) {
		JSONObject result = new JSONObject();
		//调用service层
		int i = userService.register(user);
		result.put("state",i);
		return result;
	}
	@RequestMapping("/login")
	public JSONObject login(@RequestBody SysUser user) {
		JSONObject result = new JSONObject();
		int i = userService.login(user);
		result.put("state", i);
		return result;
	}
}
