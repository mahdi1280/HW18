<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body{
            direction: rtl;
        }
        .form{
            background-color: gray;
            border-radius: 4px;
            direction: rtl;
            text-align: center;
            margin: auto;
            height: 40px;
            display: flex;
            flex-direction: row;
            flex-wrap: nowrap;
            justify-content: center;
            align-items: center;
            align-content: stretch;
            border: 1px solid black;
            width: 80%;
        }
    </style>
</head>
<body>
<form class="form">
    <table>
        <tr>
            <th>شناسه</th>
            <th>تاریخ</th>
            <th>ساعت</th>
            <th>مبدا</th>
            <th>مقصد</th>
            <th>سایر</th>
        </tr>
    <c:forEach items="${requestScope.reserves}" var="reserv">
        <tr>
            <td>${reserv.id}</td>
            <td>${reserv.ticket.localDate}</td>
            <td>${reserv.ticket.time}</td>
            <td>${reserv.ticket.source}</td>
            <td>${reserv.ticket.dest}</td>
            <td><a href="">لغو</a></td>
        </tr>
    </c:forEach>
    </table>
</form>
</body>
</html>
