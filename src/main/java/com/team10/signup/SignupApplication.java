package com.team10.signup;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jdbc.repository.config.EnableJdbcRepositories;

@SpringBootApplication
@EnableJdbcRepositories
public class SignupApplication {
	public static void main(String[] args) {
		SpringApplication.run(SignupApplication.class, args);
	}
}
