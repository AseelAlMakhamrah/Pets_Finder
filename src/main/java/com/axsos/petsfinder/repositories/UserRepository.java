package com.axsos.petsfinder.repositories;

import com.axsos.petsfinder.models.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository

public interface UserRepository extends CrudRepository<User,Long> {
    List<User> findAll();
    User findByUsername(String username);
    User findUserById(Long id);
    User findByEmail(String email);
//    User findUserByRolesAndId(Long id);

}
