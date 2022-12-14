package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.bean.Users;

@Repository
public interface UsersDao extends JpaRepository<Users, String> {

}
