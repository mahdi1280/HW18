<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            border: 1px solid black;
            width: 80%;
        }
    </style>
</head>
<body>
<form action="buyDelete" method="post" class="form">
    <table>
        <tr>
            <th>شناسه</th>
            <th>تاریخ</th>
            <th>ساعت</th>
            <th>مبدا</th>
            <th>مقصد</th>
            <th>سایر</th>
        </tr>
    <c:forEach items="${requestScope.reserves}" var="reserve">
        <tr>
            <td>${reserve.id}</td>
            <td>${reserve.ticket.localDate}</td>
            <td>${reserve.ticket.time}</td>
            <td>${reserve.ticket.source}</td>
            <td>${reserve.ticket.dest}</td>
            <td><input onclick="reserve()" type="submit" value="لغو"></td>
            <input type="hidden" value="${reserve.id}" name="reserveId">
            <input type="hidden" value="${reserve.person.id}" name="personId">
        </tr>
    </c:forEach>
    </table>

</form>
<script>
    function reserve() {
        alert("حذف با موفقیت انجام شد.");
    }
</script>
</body>
</html>
