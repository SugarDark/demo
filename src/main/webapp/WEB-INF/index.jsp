<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@
        page import = "java.util.ArrayList"
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<div style="height: 20%">


    <div style="position: absolute; color: #0000ff;">
        <form action="/api/Character/find" method="GET">

            <p>名字: <input type="text" id="name" name="name"/></p>
            <p>屬性:
                <select id = "Attri" name="attri">
                    <option value = "" ></option>
                    <option value = "火" >火</option>
                    <option value = "水" >水</option>
                    <option value = "風" >風</option>
                    <option value = "雷" >雷</option>
                    <option value = "光" >光</option>
                    <option value = "暗" >暗</option>
                </select>
            </p>
            <p>種族:
                <select id = "Race" name="race">
                    <option value = "" ></option>
                    <option value = "人" >人</option>
                    <option value = "龍" >龍</option>
                    <option value = "精靈" >精靈</option>
                    <option value = "獸" >獸</option>
                    <option value = "妖" >妖</option>
                </select>
            </p>
            <p>類型:
                <select id = "Type" name="type">
                    <option value = "" ></option>
                    <option value = "劍士" >劍士</option>
                    <option value = "射擊" >射擊</option>
                    <option value = "格鬥" >格鬥</option>
                    <option value = "特殊" >特殊</option>
                    <option value = "回復" >回復</option>
                </select>
            </p>
            <input type="Submit" value="Submit"  />
        </form>
    </div>




</div>






</body>
</html>