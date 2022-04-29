<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>
        body{
            background-image: url("https://i.pinimg.com/originals/07/03/6e/07036e12e9ca047f542437befa8872d3.jpg");
            font-family: 'sans-serif';
        }
        .form{
            margin: auto;
        }
        .table{
            margin: auto;
            width: 350px;
            height: 350px;

            background: #4f5e5661;
            padding: 20px;
            text-align: center;
            backdrop-filter: blur(4px);
            margin-top: 25vh;
            border-radius: 12px;
            border: 2px solid #00000040;
        }
        .title-login{
            color: white;
        }
        .input-text:focus{
            outline: none;

        }
        .input-text{
            color: white;
            padding: 5px 10px;
            font-size: 16px;
            margin: 0px 5px 5px 5px;
            border: 1px solid #fff0;
            background: #30303061;
            backdrop-filter: blur(4px);
            width: 90%;
            height: 30px;
        }
        .button{
            cursor: pointer;
            width: 100%;
            margin: 5px;
            height: 35px;
            color: white;
            background-color: #2b9348;
            border: 0px solid;
            font-weight: bolder;
        }
        .td-member{
            color: white;
        }
        .forget{
            color: #7c7c7c;
            cursor: pointer;
        }
    </style>
</head>
<body>
<form class="form" action="login" method="post">

    <table class="table">
        <tr>
            <td><h2 class="title-login">Login</h2></td>
        </tr>
        <tr>
            <td><input class="input-text" type="text" placeholder="Username" name="username"></td>
        </tr>
        <tr>
            <td><input class="input-text" type="text" placeholder="Password" name="password"></td>
        </tr>
        <tr>
            <td><input type="submit" class="button"></td>
        </tr>
        <tr>
            <td class="td-member">Not a member? <span class="forget"> forget</span></td>
        </tr>
    </table>
</form>
</body>
</html>
