package com.isolutons4u.springsecurity.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.isolutons4u.springsecurity.model.Users;

public interface UserRepository extends MongoRepository<Users, Integer> {
}
