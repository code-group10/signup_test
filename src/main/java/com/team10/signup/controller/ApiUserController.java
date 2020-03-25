package com.team10.signup.controller;

import com.team10.signup.domain.User;
import com.team10.signup.repository.UserRepository;
import com.team10.signup.result.Result;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/users")
public class ApiUserController {
    private Logger logger = LoggerFactory.getLogger(ApiUserController.class);

    @Autowired
    private UserRepository userRepository;

    @PostMapping("")
    public User create(User user) {
        logger.info("User : '{}'" , user);
        return userRepository.save(user);
    }

    @GetMapping("/check/{name}")
    public Result check(@PathVariable String name) {
        logger.info("name: {}", name);
        if (name.equals("testing")) {
            return Result.fail();
        }
        return Result.ok();
    }
}
