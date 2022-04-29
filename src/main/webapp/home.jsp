<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

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
        .a{
            margin: auto;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container-fluid">
<form class="form" method="get" action="search">
    <label class="input-group-text">مبدا</label>
    <input class="form-control" required type="text" name="source">
    <label class="input-group-text">مقصد</label>
    <input class="form-control" required type="text" name="dest">
    <label class="input-group-text">تاریخ</label>
    <input class="form-control" required type="text" name="date">
    <input type="hidden" value="${requestScope.person.id}" name="personId">
    <input type="submit" class="btn btn-primary">
</form>
    <a  class="btn btn-info d-flex justify-content-center" href="buy?personId=${requestScope.person.id}">مشاهده خرید های من</a>

    <table class="table table-striped table-dark">
    <tr class="thead-dark">
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
            <td><a class="btn btn-success" href="gender?personId=${requestScope.person.id}&ticketId=${ticket.id}">خرید</a></td>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>
