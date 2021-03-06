package com.example.demo.controller;

import java.io.IOException;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Optional;

import com.example.demo.repo.CharaHandler;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import com.example.demo.entity.Character;
import com.example.demo.repo.CharacterRepo;

@Controller
@RequestMapping(value="/api/Character")
public class CharacterController {
    
    @Autowired
    private CharacterRepo characterrepo;
    
    /**
     * 查詢全部
     */
    @GetMapping(value="/all")
    public String getAllCharacter(ModelMap model) {
        System.out.println(characterrepo.findAll());

        model.addAttribute("filteredList", characterrepo.findAll());
        return "head" ;
    }

    @GetMapping(value = "/find")

    public String findbyall(@RequestParam(required=false) String name, @RequestParam(required=false) String race, @RequestParam(required=false) String attri, @RequestParam(required=false) String type, ModelMap model) {
            System.out.println("在find");


            CharaHandler charaHandler = new CharaHandler();

            List<Character> alllist = characterrepo.findAll();


            List<Character> filteredList = charaHandler.findbyall(alllist, name, attri, race, type);

            System.out.println(filteredList.get(0).name);


            //System.out.println(filteredClinicList);
            model.addAttribute("filteredList", filteredList);



        return "head" ;


    }









    /**
     * 新增一筆資料
     */

    @PostMapping(value="/add")
    public ResponseEntity<Character> createCharacter(@RequestBody Character character) {

        characterrepo.insert(character);
        return ResponseEntity.ok(character);
    }


    @DeleteMapping(value="/delete/{id}")
    public ResponseEntity<Character> deleteCharacter(@PathVariable("id") String id ) {

        characterrepo.deleteById(id);
        return ResponseEntity.noContent().build();
    }

    @GetMapping(value="/update/{id}")
    public String updateCharacter(@PathVariable("id") String id, ModelMap model) {

        CharaHandler charaHandler = new CharaHandler();

        System.out.println("in update");
        List<Character> alllist = characterrepo.findAll();
        Character target = charaHandler.findbyidforupdate(alllist, id);
        System.out.println(target.toString());
        model.addAttribute("chara", target);
        System.out.println("before out");
        return "charaupdate";
    }
    @PutMapping(value="/updatecomplete")
    public ResponseEntity<Character> updatecomplete(@RequestBody Character character) {


        System.out.println(character.getId());
        System.out.println(character.getName());


        characterrepo.save(character);

        return ResponseEntity.noContent().build();
    }




/*
    @GetMapping(value="/id/{id}", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
    public Character getCustomerById(@PathVariable String id) {
        return characterrepo.findById(id).orElse(null);
    }


    @GetMapping(value="/name/{name}", produces = "application/json; charset=UTF-8")
    public Character getCustomerByName(@PathVariable String name) {
        return characterrepo.findByName(name).orElse(null);
    }


    @GetMapping(value="/attri/{attri}", produces = "application/json; charset=UTF-8")
    public List<Character> getCustomerByAge (@PathVariable String attri) {
        System.out.println(attri);
        return characterrepo.findByattri(attri);
    }
    */





    
}