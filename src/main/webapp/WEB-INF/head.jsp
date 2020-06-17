<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>




<!DOCTYPE html>
<html>

<script>
    function newcharacter() {
        var url = "/api/Character/add";
        var DataJSON = {};

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




        $.ajax({url:url, data:JSON.stringify(DataJSON), type:"POST", dataType:"json",
            contentType:"application/json;charset=utf-8", success:function(){window.alert("insert success")},
        error:function(){window.alert("insert failed")}});
        window.location.reload(true);

    }
    function deletecharacter(id) {
        id = id.substring(1, id.length);
        var url = "/api/Character/delete/" + id;
        var DataJSON = {};
        $.ajax({url:url, data:JSON.stringify(DataJSON), type:"DELETE", dataType:"json",
            contentType:"application/json;charset=utf-8", success:function(){window.alert("delete success")},
            error:function(){window.alert("delete failed")}});
        window.location.reload(true);
    }



</script>




<body>
<div style="height: 20%">
    <table border="1">
        <tbody id="menu">



        <c:forEach items="${filteredList}" var="item">
            <tr style="height:35px">
                <td></td>
                <td>名稱</td>
                <td>屬性</td>
                <td>${item.attri}</td>
                <td>CV</td>
                <td>${item.cv}</td>
                <td rowspan="10">
                    <div style="width:325px;height: 264px">
                        <img src="${item.bigpic}" style="height: inherit;width: inherit;object-fit: scale-down;object-position: center center;">
                     </div>
                </td>
            </tr>
            <tr style="height: 40px;">
                <td rowspan="2">
                    <div style="height: 81px;width: 86px;">
                        <img src="${item.smallpic}" style="height: inherit;width: inherit;object-fit: scale-down;object-position: center center;">
                    </div>
                </td>
                <td rowspan="2">${item.name}</td>
                <td>HP</td>
                <td>${item.hp}</td>
                <td colspan="2" rowspan="4">${item.intro}</td>
            </tr>
            <tr style="height: 40px">
                <td>ATK</td>
                <td>${item.atk}</td>
            </tr>
            <tr style="height: 20px">
                <td>別稱</td>
                <td>${item.nickname}</td>
                <td>種族</td>
                <td>${item.race}</td>
            </tr>
            <tr style="height: 20px">
                <td>性別</td>
                <td>${item.gender}</td>
                <td>類型</td>
                <td>${item.type}</td>

            </tr>
            <tr style="height: 20px">

                <td>隊長特性</td>
                <td>${item.leadername}</td>
                <td colspan="4">${item.leader}</td>


            </tr>
            <tr style="height: 20px">
                <td>技能</td>
                <td>${item.skillname}</td>
                <td colspan="4">${item.skill}</td>
            </tr>
            <tr style="height: 20px">
                <td>能力1</td>
                <td colspan="5">${item.abi1}</td>
            </tr>
            <tr style="height: 20px">
                <td>能力2</td>
                <td colspan="5">${item.abi2}</td>
            </tr>
            <tr style="height: 20px">
                <td>能力3</td>
                <td colspan="5">${item.abi3}</td>
            </tr>
            <tr align="right">
                <td colspan="7">
                    <button onclick = "deletecharacter('a'+'${item.id}')">刪除</button>
                </td>
            </tr>

        </c:forEach>

        <tr style="height:35px">
            <td></td>
            <td>名稱</td>
            <td>屬性</td>
            <td><textarea id="fattri" name="fattri" style="height: inherit;width: inherit;resize: none"></textarea>
            </td>
            <td>CV</td>
            <td><textarea id="fcv" name="fcv" style="height: inherit;width: inherit;resize: none"></textarea></td>
            <td rowspan="10">
                <div style="width:325px;height: 264px">
                    <textarea id="fbigpic" name="fbigpic" style="height: inherit;width: inherit;resize: none"></textarea>
                </div>
            </td>
        </tr>
        <tr style="height: 40px;">
            <td rowspan="2">
                <div style="height: 81px;width: 86px;">

                    <textarea id="fsmallpic" name="fsmallpic" style="height: inherit;width: inherit;resize: none"></textarea>

                </div>
            </td>
            <td rowspan="2"><textarea id="fname" name="fname" style="height: inherit;width: inherit;resize: none"></textarea></td>
            <td>HP</td>
            <td><textarea id="fhp" name="fhp" style="height: inherit;width: inherit;resize: none"></textarea></td>
            <td colspan="2" rowspan="4"><textarea id="fintro" name="fintro" style="height: inherit;width: inherit;resize: none"></textarea></td>
        </tr>
        <tr style="height: 40px">
            <td>ATK</td>
            <td><textarea id="fatk" name="fatk" style="height: inherit;width: inherit;resize: none"></textarea></td>
        </tr>
        <tr style="height: 20px">
            <td>別稱</td>
            <td><textarea id="fnickname" name="fnickname" style="height: inherit;width: inherit;resize: none"></textarea></td>
            <td>種族</td>
            <td><textarea id="frace" name="frace" style="height: inherit;width: inherit;resize: none"></textarea></td>
        </tr>
        <tr style="height: 20px">
            <td>性別</td>
            <td><textarea id="fgender" name="fgender" style="height: inherit;width: inherit;resize: none"></textarea></td>
            <td>類型</td>
            <td><textarea id="ftype" name="ftype" style="height: inherit;width: inherit;resize: none"></textarea></td>

        </tr>
        <tr style="height: 20px">

            <td>隊長特性</td>
            <td><textarea id="fleadername" name="fleadername" style="height: inherit;width: inherit;resize: none"></textarea></td>
            <td colspan="4"><textarea id="fleader" name="fleader" style="height: inherit;width: inherit;resize: none"></textarea></td>


        </tr>
        <tr style="height: 20px">
            <td>技能</td>
            <td><textarea id="fskillname" name="fskillname" style="height: inherit;width: inherit;resize: none"></textarea></td>
            <td colspan="4"><textarea id="fskill" name="fskill" style="height: inherit;width: inherit;resize: none"></textarea></td>
        </tr>
        <tr style="height: 20px">
            <td>能力1</td>
            <td colspan="5"><textarea id="fabi1" name="fabi1" style="height: inherit;width: inherit;resize: none"></textarea></td>
        </tr>
        <tr style="height: 20px">
            <td>能力2</td>
            <td colspan="5"><textarea id="fabi2" name="fabi2" style="height: inherit;width: inherit;resize: none"></textarea></td>
        </tr>
        <tr style="height: 20px">
            <td>能力3</td>
            <td colspan="5"><textarea id="fabi3" name="fabi3" style="height: inherit;width: inherit;resize: none"></textarea></td>
        </tr>
        <tr align="right">
            <td colspan="7">
                <button onclick = "newcharacter()">新增</button>
            </td>
        </tr>









    </table>




</div>






</body>
</html>