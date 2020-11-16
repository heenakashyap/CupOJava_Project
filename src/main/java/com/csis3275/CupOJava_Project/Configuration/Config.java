package com.csis3275.CupOJava_Project.Configuration;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;

@Configuration
public class Config {
	
	@Bean    
	public MessageSource messageSource() {        
		ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();       
		messageSource.setBasename("messages");        
		return messageSource;    
	}  

}
