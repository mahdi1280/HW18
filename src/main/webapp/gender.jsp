<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .form{
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
    </style>
</head>
<body>
    <form class="form" action="buy" method="post">
        <table>
            <tr>
                <c:out value="${requestScope.person.username}"/>
            </tr>
            <tr>
                <td>
                    <label>مرد</label>
                    <input type="radio" checked name="gender" value="آقا">

                </td>
                <td>
                    <label>زن</label>
                    <input type="radio" name="gender" value="خانم">

                </td>
            </tr>
            <tr>
                <input type="hidden" name="ticketId" value="${requestScope.ticket.id}">
                <input type="hidden" name="personId" value="${requestScope.person.id}">
                <td><input type="submit"></td>
            </tr>
        </table>
    </form>
</body>
</html>
