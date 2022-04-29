<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:out value="${requestScope.reserve.gender}"/>
<c:out value="${requestScope.reserve.person.username}"/>

</body>
</html>
