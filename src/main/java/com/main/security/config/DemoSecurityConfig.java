package com.main.security.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;

import static org.springframework.security.core.userdetails.User.UserBuilder;

@Configuration
@EnableWebSecurity
public class DemoSecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		UserBuilder userBuilder = User.withDefaultPasswordEncoder();
		auth.inMemoryAuthentication()
				.withUser(userBuilder.username("emp").password("emp").roles("EMPLOYEE"))
				.withUser(userBuilder.username("man").password("man").roles("EMPLOYEE", "MANAGER"))
				.withUser(userBuilder.username("admin").password("admin").roles("EMPLOYEE", "ADMIN"));
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
				.antMatchers("/resources/**").permitAll()
				.antMatchers("/").hasRole("EMPLOYEE")
				.antMatchers("/leaders/**").hasRole("MANAGER")
				.antMatchers("/admins/**").hasRole("ADMIN")
				.anyRequest().authenticated()
				.and()
				.formLogin()
				.loginPage("/login-page")
				.loginProcessingUrl("/login-processing-page")
				.permitAll()
				.and()
				.exceptionHandling()
				.accessDeniedPage("/access-denied-page")
				.and()
				.logout()
				.permitAll();
	}
}
