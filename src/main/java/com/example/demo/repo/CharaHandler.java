package com.example.demo.repo;

import com.example.demo.entity.Character;

import java.util.List;
import java.util.stream.Collectors;

public class CharaHandler {

    public List<Character> findbyall(List<Character> charalist, String queryName, String queryAttri, String queryRace, String queryType) {
        List<Character> matchingElements;
        //-4
        if(queryName.equals("") && queryAttri.equals("") && queryRace.equals("") && queryType.equals("")){
            matchingElements = charalist;
            System.out.println("-4");
        }

        //-3
        else if(queryAttri.equals("") && queryRace.equals("") && queryType.equals("")){
            matchingElements = charalist.stream().filter(
                    str -> str.getName().trim().contains(queryName))
                    .collect(Collectors.toList());
            System.out.println("-3");
        }
        else if(queryName.equals("") && queryRace.equals("") && queryType.equals("")){
            matchingElements = charalist.stream().filter(
                    str -> str.getattri().trim().contains(queryAttri))
                    .collect(Collectors.toList());
            System.out.println("-3");
        }
        else if(queryName.equals("") && queryAttri.equals("") && queryType.equals("")){
            matchingElements = charalist.stream().filter(
                    str -> str.getrace().trim().contains(queryRace))
                    .collect(Collectors.toList());
            System.out.println("-3");
        }
        else if(queryName.equals("") && queryAttri.equals("") && queryRace.equals("")){
            matchingElements = charalist.stream().filter(
                    str -> str.gettype().trim().contains(queryType))
                    .collect(Collectors.toList());
            System.out.println("-3");
        }


        //queryName.equals("") && queryAttri.equals("") && queryRace.equals("") && queryType.equals("")


        //-2
        else if(queryName.equals("") && queryAttri.equals("")){
            matchingElements = charalist.stream().filter(
                    str -> str.getrace().trim().contains(queryRace) && str.gettype().trim().contains(queryType))
                    .collect(Collectors.toList());
            System.out.println("-2");
        }
        else if(queryName.equals("") && queryRace.equals("")){
            matchingElements = charalist.stream().filter(
                    str -> str.getattri().trim().contains(queryAttri) && str.gettype().trim().contains(queryType))
                    .collect(Collectors.toList());
            System.out.println("-2");
        }
        else if(queryName.equals("") && queryType.equals("")){
            matchingElements = charalist.stream().filter(
                    str -> str.getattri().trim().contains(queryAttri) && str.getrace().trim().contains(queryRace))
                    .collect(Collectors.toList());
            System.out.println("-2");
        }
        else if(queryAttri.equals("") && queryRace.equals("")){
            matchingElements = charalist.stream().filter(
                    str -> str.getName().trim().contains(queryName) && str.gettype().trim().contains(queryType))
                    .collect(Collectors.toList());
            System.out.println("-2");
        }
        else if(queryAttri.equals("") && queryType.equals("")){
            matchingElements = charalist.stream().filter(
                    str -> str.getName().trim().contains(queryName) && str.getrace().trim().contains(queryRace))
                    .collect(Collectors.toList());
            System.out.println("-2");
        }
        else if(queryRace.equals("") && queryType.equals("")){
            matchingElements = charalist.stream().filter(
                    str -> str.getName().trim().contains(queryName) && str.getattri().trim().contains(queryAttri))
                    .collect(Collectors.toList());
            System.out.println("-2");
        }




        //-1
        else if(queryAttri.equals("")){
            matchingElements = charalist.stream().filter(
                    str -> str.getName().trim().contains(queryName) && str.getrace().trim().contains(queryRace) && str.gettype().trim().contains(queryType))
                    .collect(Collectors.toList());
            System.out.println("-1");
        }
        else if(queryName.equals("")){
            matchingElements = charalist.stream().filter(
                    str -> str.getattri().trim().contains(queryAttri) && str.getrace().trim().contains(queryRace) && str.gettype().trim().contains(queryType))
                    .collect(Collectors.toList());
            System.out.println("-1");
        }
        else if(queryType.equals("")){
            matchingElements = charalist.stream().filter(
                    str -> str.getName().trim().contains(queryName) && str.getrace().trim().contains(queryRace) && str.getattri().trim().contains(queryAttri))
                    .collect(Collectors.toList());
            System.out.println("-1");
        }
        else if(queryRace.equals("")){
            matchingElements = charalist.stream().filter(
                    str -> str.getName().trim().contains(queryName) && str.getattri().trim().contains(queryAttri) && str.gettype().trim().contains(queryType))
                    .collect(Collectors.toList());
            System.out.println("-1");
        }

        //-0

        else{
            matchingElements = charalist.stream().filter(
                    str -> str.getName().trim().contains(queryName) && str.getattri().trim().contains(queryAttri) && str.getrace().trim().contains(queryRace) && str.gettype().trim().contains(queryType))
                    .collect(Collectors.toList());
            System.out.println("-0");
        }




        return matchingElements;
    }
}
