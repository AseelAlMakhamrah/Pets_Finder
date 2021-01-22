<%--
  Created by IntelliJ IDEA.
  User: SYSCOM
  Date: 1/20/2021
  Time: 4:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
</head>
<body>
<div class="container">
<c:if test="${logoutMessage != null}">
    <c:out value="${logoutMessage}"></c:out>
</c:if>
<h1>Login</h1>
<c:if test="${errorMessage != null}">
    <c:out value="${errorMessage}"></c:out>
</c:if>
<form method="POST" action="/login">
    <p>
        <label for="username">Username</label>
        <input type="text" id="username" name="username"/>
    </p>
    <p>
        <label for="password">Password</label>
        <input type="password" id="password" name="password"/>
    </p>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <input type="submit" value="Login!" type="button" class="btn btn-outline-primary"/>
    <button class="btn btn-outline-secondary"><a href="/registration">Sign Up!</a></button>
</form>
</div>
</body>
</html>
