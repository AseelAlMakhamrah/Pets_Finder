package com.axsos.petsfinder.repositories;

import com.axsos.petsfinder.models.Role;
import com.axsos.petsfinder.models.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RoleRepository extends CrudRepository<Role, Long>{
    List<Role> findAll();
    List<Role> findByName(String name);
}