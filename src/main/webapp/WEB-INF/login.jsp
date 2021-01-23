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
<html>
<head>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pets Finder</title>
</head>
<body>
<div class="container">
<%--    <div class="header">--%>
<%--        <div class="logo">--%>
<%--            <img src="img/PetsFinder.png" height="100px" width="100px" />--%>
<%--        </div>--%>
<%--    </div>--%>
    <center>
<c:if test="${logoutMessage != null}">
    <c:out value="${logoutMessage}"></c:out>
</c:if>
<h1>Login</h1>
<c:if test="${errorMessage != null}">
    <c:out value="${errorMessage}"></c:out>
</c:if>
<form method="POST" action="/login">
    <p>
        <label for="username">Username: </label>
        <input type="text" id="username" name="username"/>
    </p>
    <p>
        <label for="password">Password: </label>
        <input type="password" id="password" name="password"/>
    </p>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <input type="submit" value="Login!" type="button" class="btn btn-outline-primary"/>
    <button class="btn btn-outline-secondary"><a href="/registration">Sign Up!</a></button>
</form>
    </center>
</div>
</body>
</html>
