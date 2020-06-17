package com.example.demo.repo;

import java.util.List;
import java.util.Optional;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.example.demo.entity.Character;

public interface CharacterRepo extends MongoRepository<Character, String> {
    
    public Optional<Character> findByName(String name);
    public List<Character> findByattri(String attri);
    public List<Character> findByrace(String race);
    public List<Character> findBytype(String type);






}
