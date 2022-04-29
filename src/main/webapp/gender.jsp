<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

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
