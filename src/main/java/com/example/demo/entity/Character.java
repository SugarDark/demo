package com.example.demo.entity;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

@Document(collection="characters")
public class Character {
    
    @Id
    public String id;
    @Field("name")
    public String name;
    @Field("atk")
    public int atk;
    @Field("hp")
    public int hp;
    @Field("attri")
    public String attri;    
    @Field("gender")
    public String gender;
    @Field("race")
    public String race;
    @Field("type")
    public String type;
    @Field("leader")
    public String leader;
    @Field("skill")
    public String skill;
    @Field("abi1")
    public String abi1;
    @Field("abi2")
    public String abi2;
    @Field("abi3")
    public String abi3;
    @Field("cv")
    public String cv;
    @Field("intro")
    public String intro;
    @Field("smallpic")
    public String smallpic;
    @Field("bigpic")
    public String bigpic;
    @Field("nickname")
    public String nickname;
    @Field("leadername")
    public String leadername;
    @Field("skillname")
    public String skillname;

    public Character() {}

    public Character(String name, int atk, int hp, String attri, String gender, 
    		String race, String type, String leader, String skill, String abi1, 
    		String abi2, String abi3, String cv, String intro, String smallpic,
                     String bigpic, String nickname, String leadername, String skillname) {
        this.name = name;
        this.atk = atk;
        this.attri = attri;
        this.hp = hp;
        this.gender = gender;
        this.race = race;
        this.type = type;
        this.leader = leader;
        this.skill = skill;
        this.abi1 = abi1;
        this.abi2 = abi2;
        this.abi3 = abi3;
        this.cv = cv;
        this.intro = intro;
        this.smallpic = smallpic;
        this.bigpic = bigpic;
        this.nickname = nickname;
        this.leadername = leadername;
        this.skillname = skillname;
    }

    // getters and setters

    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getatk() {
        return atk;
    }
    public void setatk(int atk) {
        this.atk = atk;
    }
    public int gethp() {
        return hp;
    }
    public void sethp(int hp) {
        this.hp = hp;
    }
    public String getattri() {
        return attri;
    }
    public void setattri(String attri) {
        this.attri = attri;
    }
    public String getgender() {
        return gender;
    }
    public void setgender(String gender) {
        this.gender = gender;
    }
    public String getrace() {
        return race;
    }
    public void setrace(String race) {
        this.race = race;
    }
    public String gettype() {
        return type;
    }
    public void settype(String type) {
        this.type = type;
    }
    public String getleader() {
        return leader;
    }
    public void setleader(String leader) {
        this.leader = leader;
    }
    public String getskill() {
        return skill;
    }
    public void setskill(String skill) {
        this.skill = skill;
    }
    public String getabi1() {
        return abi1;
    }
    public void setabi1(String abi1) {
        this.abi1 = abi1;
    }
    public String getabi2() {
        return abi2;
    }
    public void setabi2(String abi2) {
        this.abi2 = abi2;
    }
    public String getabi3() {
        return abi3;
    }
    public void setabi3(String abi3) {
        this.abi3 = abi3;
    }public String getcv() {
        return cv;
    }
    public void setcv(String cv) {
        this.cv = cv;
    }
    public String getintro() {
        return intro;
    }
    public void setintro(String intro) {
        this.intro = intro;
    }
    public String getsmallpic() {
        return smallpic;
    }
    public void setsmallpic(String smallpic) {
        this.smallpic = smallpic;
    }
    public String getbigpic() {
        return bigpic;
    }
    public void setbigpic(String bigpic) {
        this.bigpic = bigpic;
    }
    public String getnickname() {
        return nickname;
    }
    public void setnickname(String nickname) {
        this.nickname = nickname;
    }
    public String getleadername() {
        return leadername;
    }
    public void setleadername(String leadername) {
        this.leadername = leadername;
    }
    public String getskillname() {
        return skillname;
    }
    public void setskillname(String skillname) {
        this.skillname = skillname;
    }











    
}