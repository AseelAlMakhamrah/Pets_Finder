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

<html>
<head>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pets Finder</title>
<%--    <style>--%>
<%--        .container{--%>
<%--            background-image: url('/img/bkground.jpg');--%>
<%--        }--%>
<%--    </style>--%>
</head>
<body>
<div class="container">
<%--    <div class="header">--%>
<%--        <div class="logo">--%>
<%--            <img src="img/PetsFinder.png" height="100px" width="100px" />--%>
<%--        </div>--%>
<%--    </div>--%>
<center>
<h1>Register!</h1>

<p><form:errors path="user.*"/></p>

<form:form method="POST" action="/registration" modelAttribute="user">
    <div class="form-group">
        <form:label path="firstName">First Name:</form:label>
        <form:input path="firstName"/>
    </div>
    <div class="form-group">
        <form:label path="lastName">Last Name:</form:label>
        <form:input path="lastName"/>
</div>
    <div class="form-group">
        <form:label path="username">Username:</form:label>
        <form:input path="username"/>
            </div>
    <div class="form-group">
        <form:label path="email">Email:     </form:label>
        <form:input path="email"/>
            </div>
    <div class="form-group">
        <form:label path="location">Location:   </form:label>
        <form:input path="location"/>
            </div>
    <div class="form-group">
        <form:label path="phoneNumber">Phone Number:</form:label>
        <form:input path="phoneNumber"/>
            </div>

    <div class="form-group">
        <form:label path="password">Password:     </form:label>
        <form:password path="password"/>
            </div>
    <div class="form-group">
        <form:label path="passwordConfirmation">Password Confirmation:</form:label>
        <form:password path="passwordConfirmation"/>
            </div>
    <input type="submit" value="Register!" type="button" class="btn btn-outline-secondary"/>
</form:form>
<a href="/login">already have an account! Sign in.</a>
</center>
</div>
</body>
</html>