package com.praveen.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.praveen.model.User;
@Repository
public interface UserRepository extends JpaRepository<User, Long> {
}
