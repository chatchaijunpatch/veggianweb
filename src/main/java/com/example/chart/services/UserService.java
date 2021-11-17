package com.example.chart.services;

import com.example.chart.entities.User;
import com.example.chart.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;
import java.util.List;

@Service
public class UserService {
    @Autowired
    private RestTemplate restTemplate;
    private BCryptPasswordEncoder passwordEncoder;
    @Autowired
    private UserRepository repository;
    private User user;
    public List<User> getAll()
    {
        return repository.findAll();
    }

    public void addUser(User user) {
        passwordEncoder = new BCryptPasswordEncoder();
        String enc = passwordEncoder.encode(user.getPassword());
        user.setPassword(enc);
        repository.save(user);
    }
    public void  setLoginUser(String name){
        for (int i = 0; i<this.getAll().size();i++){
            if (name.equals(this.getAll().get(i).getUsername())){
                user = this.getAll().get(i);
            }
        }
    }
    public User getUser(){
        return user;
    }
}
