<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>





<!DOCTYPE html>
<html>


<body>
<div style="height: 20%">
    <table border="1">
        <tbody id="menu">



        <c:forEach items="${filteredList}" var="item">
            <tr style="height:35px">
                <td></td>
                <td>名稱</td>
                <td></td>
                <td></td>
                <td>CV</td>
                <td>${item.cv}</td>
                <td>
                    <div style="width:325px;height: 264px">
                        <img src="" style="height: inherit;width: inherit;object-fit: scale-down;object-position: center center;">
                     </div>
                </td>
            </tr>

            <tr style="height: 40px;">
                <td rowspan="2">
                    <div style="height: 81px;width: 86px;">
                        <img src="" style="height: inherit;width: inherit;object-fit: scale-down;object-position: center center;">
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
                <td></td>
                <td></td>
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
                <td></td>
                <td colspan="4">${item.leader}</td>


            </tr>
            <tr style="height: 20px">
                <td>技能</td>
                <td></td>
                <td colspan="4">${item.skill}</td>
            </tr>
            <tr style="height: 20px">
                <td>能力1</td>
                <td>${item.abi1}</td>
            </tr>
            <tr style="height: 20px">
                <td>能力2</td>
                <td>${item.abi2}</td>
            </tr>
            <tr style="height: 20px">
                <td>能力3</td>
                <td>${item.abi3}</td>
            </tr>
























        </c:forEach>

    </table>




</div>






</body>
</html>