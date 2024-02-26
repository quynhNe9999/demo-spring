package com.oneempower.auth.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;




@Configuration
@EnableWebSecurity
@EnableJpaRepositories("com.oneempower.auth.repository")
@ComponentScan("com.oneempower.auth")
public class WebSecurityConfig {

	@Autowired
	private AuthenticationConfiguration authConfiguration;

	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		http.csrf().disable().authorizeRequests().antMatchers("/resources/**", "/registration")
		.permitAll()
		.antMatchers("/view/","/addSinhVien","/editSinhVien/{id}","/deleteSinhVien/{id}","/user/**","/customer/","/addCustomer","/editCustomer/{id}","/deleteCustomer/{id}","/upload").hasRole("ADMIN")
		.antMatchers("/view/","/view?keyword=?","/view?page=0&size=5&keyword=?","/customer/","/customer?keyword=?","/customer?page=0&size=5&keyword=?").hasAnyRole("USER", "ADMIN")
				.anyRequest().authenticated()
				.and().formLogin()
				.loginPage("/login")
				.defaultSuccessUrl("/")
				.permitAll()
				.and()
				.logout()
				.permitAll();

		return http.build();
	}

	@Bean
	public AuthenticationManager authenticationManager() throws Exception {
		return authConfiguration.getAuthenticationManager();
	}
}