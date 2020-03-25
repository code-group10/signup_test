package com.team10.signup;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jdbc.repository.config.EnableJdbcRepositories;

@SpringBootApplication
@ComponentScan(basePackages={"com.team10"})
@EnableJdbcRepositories
public class SignupApplication {
	public static void main(String[] args) {
		SpringApplication.run(SignupApplication.class, args);
	}
}
