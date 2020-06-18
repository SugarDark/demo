<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>




<!DOCTYPE html>
<html>

<script>
    function updatecomplete(id) {
        id = id.substring(1, id.length);
        var url = "/api/Character/updatecomplete";
        var DataJSON = {};

        console.log("id");
        console.log(id);

        DataJSON["id"] = id;
        DataJSON["name"] = document.getElementById("fname").value;
        DataJSON["atk"] = document.getElementById("fatk").value;
        DataJSON["hp"] = document.getElementById("fhp").value;
        DataJSON["attri"] = document.getElementById("fattri").value;
        DataJSON["gender"] = document.getElementById("fgender").value;
        DataJSON["race"] = document.getElementById("frace").value;
        DataJSON["type"] = document.getElementById("ftype").value;
        DataJSON["leader"] = document.getElementById("fleader").value;
        DataJSON["skill"] = document.getElementById("fskill").value;
        DataJSON["abi1"] = document.getElementById("fabi1").value;
        DataJSON["abi2"] = document.getElementById("fabi2").value;
        DataJSON["abi3"] = document.getElementById("fabi3").value;
        DataJSON["cv"] = document.getElementById("fcv").value;
        DataJSON["intro"] = document.getElementById("fintro").value;
        DataJSON["smallpic"] = document.getElementById("fsmallpic").value;
        DataJSON["bigpic"] = document.getElementById("fbigpic").value;
        DataJSON["nickname"] = document.getElementById("fnickname").value;
        DataJSON["leadername"] = document.getElementById("fleadername").value;
        DataJSON["skillname"] = document.getElementById("fskillname").value;




        $.ajax({url:url, data:JSON.stringify(DataJSON), type:"PUT",
            contentType:"application/json;charset=utf-8", success:function(data){console.log(data);window.alert("insert success");document.location.href="/";},
            error:function(){window.alert("insert failed");document.location.href="/";}});


    }




</script>




<body>






<div style="height: 20%">
    <table border="1">
        <tbody id="menu">





        <tr style="height:35px">
            <td></td>
            <td>名稱</td>
            <td>屬性</td>
            <td><textarea id="fattri" name="fattri" style="height: inherit;width: inherit;resize: none">${chara.attri}</textarea>
            </td>
            <td>CV</td>
            <td><textarea id="fcv" name="fcv" style="height: inherit;width: inherit;resize: none">${chara.cv}</textarea></td>
            <td rowspan="10">
                <div style="width:325px;height: 264px">
                    <textarea id="fbigpic" name="fbigpic" style="height: inherit;width: inherit;resize: none">${chara.bigpic}</textarea>
                </div>
            </td>
        </tr>
        <tr style="height: 40px;">
            <td rowspan="2">
                <div style="height: 81px;width: 86px;">

                    <textarea id="fsmallpic" name="fsmallpic" style="height: inherit;width: inherit;resize: none">${chara.smallpic}</textarea>

                </div>
            </td>
            <td rowspan="2"><textarea id="fname" name="fname" style="height: inherit;width: inherit;resize: none">${chara.name}</textarea></td>
            <td>HP</td>
            <td><textarea id="fhp" name="fhp" style="height: inherit;width: inherit;resize: none">${chara.hp}</textarea></td>
            <td colspan="2" rowspan="4"><textarea id="fintro" name="fintro" style="height: inherit;width: inherit;resize: none">${chara.intro}</textarea></td>
        </tr>
        <tr style="height: 40px">
            <td>ATK</td>
            <td><textarea id="fatk" name="fatk" style="height: inherit;width: inherit;resize: none">${chara.atk}</textarea></td>
        </tr>
        <tr style="height: 20px">
            <td>別稱</td>
            <td><textarea id="fnickname" name="fnickname" style="height: inherit;width: inherit;resize: none">${chara.nickname}</textarea></td>
            <td>種族</td>
            <td><textarea id="frace" name="frace" style="height: inherit;width: inherit;resize: none">${chara.race}</textarea></td>
        </tr>
        <tr style="height: 20px">
            <td>性別</td>
            <td><textarea id="fgender" name="fgender" style="height: inherit;width: inherit;resize: none">${chara.gender}</textarea></td>
            <td>類型</td>
            <td><textarea id="ftype" name="ftype" style="height: inherit;width: inherit;resize: none">${chara.type}</textarea></td>

        </tr>
        <tr style="height: 20px">

            <td>隊長特性</td>
            <td><textarea id="fleadername" name="fleadername" style="height: inherit;width: inherit;resize: none">${chara.leadername}</textarea></td>
            <td colspan="4"><textarea id="fleader" name="fleader" style="height: inherit;width: inherit;resize: none">${chara.leader}</textarea></td>


        </tr>
        <tr style="height: 20px">
            <td>技能</td>
            <td><textarea id="fskillname" name="fskillname" style="height: inherit;width: inherit;resize: none">${chara.skillname}</textarea></td>
            <td colspan="4"><textarea id="fskill" name="fskill" style="height: inherit;width: inherit;resize: none">${chara.skill}</textarea></td>
        </tr>
        <tr style="height: 20px">
            <td>能力1</td>
            <td colspan="5"><textarea id="fabi1" name="fabi1" style="height: inherit;width: inherit;resize: none">${chara.abi1}</textarea></td>
        </tr>
        <tr style="height: 20px">
            <td>能力2</td>
            <td colspan="5"><textarea id="fabi2" name="fabi2" style="height: inherit;width: inherit;resize: none">${chara.abi2}</textarea></td>
        </tr>
        <tr style="height: 20px">
            <td>能力3</td>
            <td colspan="5"><textarea id="fabi3" name="fabi3" style="height: inherit;width: inherit;resize: none">${chara.abi3}</textarea></td>
        </tr>
        <tr align="right">
            <td colspan="7">
                <button onclick = "updatecomplete('a'+'${chara.id}')">完成</button>
            </td>
        </tr>









    </table>




</div>













</body>
</html>