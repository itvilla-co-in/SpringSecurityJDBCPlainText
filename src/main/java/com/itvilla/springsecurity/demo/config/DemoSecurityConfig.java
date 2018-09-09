package com.itvilla.springsecurity.demo.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;

@Configuration
@EnableWebSecurity
public class DemoSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private DataSource securityDataSource;

	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		
		auth.jdbcAuthentication().dataSource(securityDataSource);
		
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.authorizeRequests().antMatchers("/").permitAll()
		    .antMatchers("/employee/**").hasAnyRole("EMPLOYEE","MANAGER")
		    .antMatchers("/manager/**").hasRole("MANAGER")
		    .antMatchers("/admin/**").hasRole("ADMIN")
		    .and()
			.formLogin()
				.loginPage("/mylogin")
				.loginProcessingUrl("/authenticateTheUser")
				.permitAll()
		.and()
		.logout().permitAll();
		
	}
	
	
	
}






