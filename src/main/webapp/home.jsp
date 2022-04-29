<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        }
        .table{
            border: 1px solid black;
            margin: auto;
            text-align: center;
            width: 80%;
        }
    </style>
</head>
<body>

<form class="form" method="get" action="search">
    <label>مبدا</label>
    <input required type="text" name="source">
    <label>مقصد</label>
    <input required type="text" name="dest">
    <label>تاریخ</label>
    <input required type="text" name="date">
    <input type="hidden" value="${requestScope.person.id}" name="personId">
    <input type="submit">
</form>
<a href="buy">مشاهده خرید های من</a>
<table class="table">
    <tr>
        <th>شناسه اتوبوس</th>
        <th>مبدا</th>
        <th>مقصد</th>
        <th>تاریخ</th>
        <th>ساعت</th>
        <th>سایر</th>
    </tr>
    <c:forEach items="${requestScope.tickets}" var="ticket">
        <tr>
            <td>${ticket.id}</td>
            <td>${ticket.source}</td>
            <td>${ticket.dest}</td>
            <td>${ticket.localDate}</td>
            <td>${ticket.time}</td>
            <td><a href="gender?personId=${requestScope.person.id}&ticketId=${ticket.id}">خرید</a></td>
        </tr>
    </c:forEach>
</table>
<%--<c:out value="${requestScope.person.id}"/>--%>
<%--<c:out value="${requestScope.person.username}"/>--%>
<%--<c:out value="${requestScope.person.password}"/>--%>
<%--<c:out value="${requestScope.person.version}"/>--%>
</body>
</html>
