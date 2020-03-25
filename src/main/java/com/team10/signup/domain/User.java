package com.team10.signup.domain;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;

public class User {

    @Id
    @JsonProperty
    private Long id;

    @Column("userId")
    @JsonProperty
    private String userId;

    public User(Long id, String userId) {
        this.id = id;
        this.userId = userId;
    }

    public String getUserId() {
        return userId;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", userId='" + userId + '\'' +
                '}';
    }
}
