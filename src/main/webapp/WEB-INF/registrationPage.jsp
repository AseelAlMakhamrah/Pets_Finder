<%--
  Created by IntelliJ IDEA.
  User: SYSCOM
  Date: 1/20/2021
  Time: 6:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html><head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Signup</title>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="layout.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway&amp;display=swap">

    <style>
        *{
            box-sizing: border-box;
            color: white
        }

        .bg{
            background-image: linear-gradient(
                    rgba(0, 0, 0, 0.3),
                    rgba(0, 0, 0, 0.3)
            ),

            url("https://images.unsplash.com/photo-1450778869180-41d0601e046e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1150&q=80");
            width: 100%;
            height: auto;
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover
        }
        sup{
            color: red
        }
        .form-container{
            margin: 60px auto 20px auto;
            padding: 20px;
            width: 400px;
            background: rgba(0, 0, 0, 0.5);
            border-radius: 10px;
        }
        #btn{
            color:white;
            background-color: #231942;
            border-radius: 5px
        }

        p{
            text-align: center;
            margin-top: 10px
        }
        @media screen and (max-width: 500px){
            .form-container{
                width: 100%
            }
        }


    </style>
</head>

<body>
<div class="container-fluid bg">
    <p><form:errors path="user.*"/></p>
    <div class="row justify-content-center">
        <div class="col-xs-12 col-sm-6 col-md-3">
            <form:form class="form-container" action="/registration" method="POST" modelAttribute="user">
                <h4 class="text-center"> Signup</h4>
                <hr>
                <div class="form-group">
                    <form:label path="firstName" for="firstname"> Firstname <sup>*</sup></form:label>
                    <form:input  path="firstName" type="text" class="form-control"  id="firstname" placeholder="Firstname" required=""/>
                    <span class="error_form" id="fname_error_message"></span>
                </div>
                <div class="form-group">
                    <form:label for="lastname" path="lastName">Lastname <sup>*</sup></form:label>
                    <form:input type="text"  path="lastName" class="form-control"  id="lastname" placeholder="lastname" required=""/>
                    <span class="error_form" id="lname_error_message"></span>
                </div>
                <div class="form-group">
                    <form:label for="email" path="email" >Email <sup>*</sup></form:label>
                    <form:input type="email" path="email" class="form-control" id="email" placeholder="Email" required=""/>
                    <span class="error_form" id="email_error_message"></span>
                </div>
                <div class="form-group">
                    <form:label for="username" path="username">Username <sup>*</sup></form:label>
                    <form:input type="text" class="form-control" path="username" id="username" name="username" placeholder="Username" required=""/>
                    <span class="error_form" id="uname_error_message"></span>
                </div>
                <div class="form-group">
                    <form:label for="location" path="location">Location <sup>*</sup></form:label>
                    <form:input type="text" class="form-control" path="location" id="location"  placeholder="location" required=""/>
                    <span class="error_form" id="uname_error_message"></span>
                </div>
                <div class="form-group">
                    <form:label for="phoneNumber" path="phoneNumber">Phone Number <sup>*</sup></form:label>
                    <form:input type="text" class="form-control" path="phoneNumber" id="phoneNumber"  placeholder="phoneNumber" required=""/>
                    <span class="error_form" id="uname_error_message"></span>
                </div>
                <div class="form-group">
                    <form:label for="password" path="password" >Password <sup>*</sup></form:label>
                    <form:input type="password" path="password" class="form-control" id="password" name="password" placeholder="Password" required=""/>
                    <span class="error_form" id="password_error_message"></span>
                </div>
                <div class="form-group">
                    <form:label for="password" path="passwordConfirmation" >Password Confirmation: <sup>*</sup></form:label>
                    <form:input type="password" path="passwordConfirmation" class="form-control" id="password" name="password" placeholder="Password" required=""/>
                    <span class="error_form" id="password_error_message"></span>
                </div>
                <button type="submit" id="btn" class=" btn form-control">Submit</button>
                <p id="signup-link">Already have an account? <a style="color:white; text-decoration:underline" id="signupLink" href="/login">Login</a> here</p>
            </form:form>

        </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>


</body></html>