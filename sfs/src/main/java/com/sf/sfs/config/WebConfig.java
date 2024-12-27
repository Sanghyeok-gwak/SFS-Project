package com.sf.sfs.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.sf.sfs.interceptor.LoginCheckInterceptor;

import lombok.RequiredArgsConstructor;

@Configuration
@RequiredArgsConstructor
public class WebConfig implements WebMvcConfigurer{
	
	private final LoginCheckInterceptor loginCheckInterceptor;
	
	
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// <resources mapping="/resources/**" location="classpath:/static/" />
		registry.addResourceHandler("/resources/**").addResourceLocations("classpath:/static/");
		
		registry.addResourceHandler("/upload/**")
				.addResourceLocations("file:///upload/");
	}
	
	public void addInterceptors(InterceptorRegistry registry) {
			
			registry.addInterceptor(loginCheckInterceptor).addPathPatterns("/sfs/**");
			
			
		}
	
	
	

}
