package com.axsos.petsfinder.services;

import com.axsos.petsfinder.models.Role;
import com.axsos.petsfinder.models.User;
import com.axsos.petsfinder.repositories.RoleRepository;
import com.axsos.petsfinder.repositories.UserRepository;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class UserService {

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;

    public UserService(UserRepository userRepository, RoleRepository roleRepository, BCryptPasswordEncoder bCryptPasswordEncoder)     {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }


    // 1
    public void saveWithUserRole(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(roleRepository.findByName("ROLE_USER"));
        userRepository.save(user);
    }

    // 2
    public void saveUserWithAdminRole(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(roleRepository.findByName("ROLE_ADMIN"));
        userRepository.save(user);
    }
//    public boolean findByAdmins(){
//        List<Role> permission=roleRepository.findAll();
//
//    }

    // 3
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }
    public List<User> allUsers() {
        return  userRepository.findAll();
    }
//    public List<User> allUser();

    public User findByEmail(String email) {
        return userRepository.findByEmail(email);
    }
    public User findById(Long id){
        return userRepository.findUserById(id);
    }
}
