<%--
  Created by IntelliJ IDEA.
  User: SYSCOM
  Date: 1/20/2021
  Time: 4:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html><head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway&amp;display=swap">
    <link rel="stylesheet" href="layout.css">



    <style>
        *{
            box-sizing: border-box;
            color:white
        }

        .bg{
            background-image: linear-gradient(
                    rgba(0, 0, 0, 0.3),
                    rgba(0, 0, 0, 0.3)
            ),

            url("https://images.unsplash.com/photo-1450778869180-41d0601e046e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1150&q=80");
            width: 100%;
            height: auto;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover
        }
        sup{
            color: red
        }
        .form-container{
            margin: 150px auto 40px auto;
            padding: 25px 20px;
            width: 400px;
            background: rgba(0, 0, 0, 0.5);
            border-radius: 10px;
            -webkit-box-shadow: -8px 6px 25px 0px rgba(0,0,0,0.75);
            -moz-box-shadow: -8px 6px 25px 0px rgba(0,0,0,0.75);
            box-shadow: -8px 6px 25px 0px rgba(0,0,0,0.75);
        }
        #btn{
            background-color: #231942;
            border-radius: 5px;
            color:white
        }
        p{
            text-align: center;
            margin-top: 10px
        }

        @media screen and (max-width:500px){

            .form-container{
                width: 95%;
                margin: 20vh auto
            }

        }
    </style>
</head>

<body>
<c:if test="${logoutMessage != null}">
    <c:out value="${logoutMessage}"></c:out>
</c:if>

<c:if test="${errorMessage != null}">
    <c:out value="${errorMessage}"></c:out>
</c:if>
<div class="container-fluid bg">
    <div class="row justify-content-center">
        <div class="col-xs-12 col-sm-6 col-md-3">
            <form class="form-container" action="/login" method="POST">
                <div class="form-group">

                <label for="username">Username <sup>*</sup></label>
                <input type="text" class="form-control" id="username" name="username" placeholder="Username" required="">
        </div>
        <div class="form-group">
            <label for="password">Password <sup>*</sup></label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Password" required="">
        </div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <button type="submit" id="btn" class="btn  form-control">Submit</button>
        <p id="signup-link">Don't have an account? <a style="color:white; text-decoration:underline" id="signupLink" href="/registration">Sign Up</a> here</p>
        </form>

    </div>
</div>
</div>


<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
</body></html>