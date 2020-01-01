package edu.swjtuhc.demo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MyWebMvcConfigurer implements WebMvcConfigurer {
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// TODO Auto-generated method stub
		registry.addResourceHandler("/rotation/**").addResourceLocations("file:E:/localhostFiles/poster/");
		registry.addResourceHandler("/cover/**").addResourceLocations("file:E:/localhostFiles/cover/");
		registry.addResourceHandler("/video/**").addResourceLocations("file:E:/localhostFiles/video/");
	}
}
