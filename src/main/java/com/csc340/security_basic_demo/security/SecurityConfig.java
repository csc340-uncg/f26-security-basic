package com.csc340.security_basic_demo.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {

  private AppUserDetailsService userDetailsService;

  @Bean
  public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
    http
        .authorizeHttpRequests(authorize -> authorize
            .requestMatchers("/static/**", "/css/**", "/*.jpg", "/*.png", "/*.gif").permitAll()
            .requestMatchers("/", "/home").permitAll()
            .requestMatchers("/mod/**").hasAnyRole("KNIGHT", "MASTER")
            .requestMatchers("/admin/**").hasAnyRole("MASTER")
            .anyRequest().authenticated())
        .formLogin(Customizer.withDefaults())
        .exceptionHandling((x) -> x.accessDeniedPage("/403"))
        .logout(Customizer.withDefaults());
    return http.build();
  }

  protected void configure(AuthenticationManagerBuilder auth) throws Exception {
    auth.userDetailsService(userDetailsService);
  }

}
