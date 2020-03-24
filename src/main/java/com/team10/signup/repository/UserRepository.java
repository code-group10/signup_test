package com.team10.signup.repository;

import com.team10.signup.domain.User;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface UserRepository extends CrudRepository<User, Long> {

    @Query("select * from user where userId = :userId")
    List<User> findByUserId(@Param("userId") String userId);

}
