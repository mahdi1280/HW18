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
    </style>
</head>
<body>
    <form class="form-horizontal" action="buy" method="post">
        <table class="table table-striped table-dark">
            <div>
                <td>نام کاربری:</td>
                <td><c:out value="${requestScope.person.username}"/></td>
            </div>
            <div>
                <td>
                    <labe>مرد</labe>
                    <input class="form-check-input" type="radio" checked name="gender" value="آقا">

                </td>
                <td>
                    <label>زن</label>
                    <input class="form-check-input" type="radio" name="gender" value="خانم">

                </td>
            </div>
            <div class="form-group">
                <input type="hidden" name="ticketId" value="${requestScope.ticket.id}">
                <input type="hidden" name="personId" value="${requestScope.person.id}">
                <td><input class="btn btn-success" type="submit" value="خرید"></td>
            </div>
        </table>
    </form>
</body>
</html>
