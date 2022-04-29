<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <style>

        body{
            background-image: url("bus-cartoon-icon-illustration_138676-1957.webp");
            font-family: 'sans-serif';
            background-size: cover;
            background-position: center;
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
