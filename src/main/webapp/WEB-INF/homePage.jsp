<%--
  Created by IntelliJ IDEA.
  User: SYSCOM
  Date: 1/20/2021
  Time: 4:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
    <meta charset="ISO-8859-1">
    <title>Home Page</title>
</head>
<body>
<h1>Welcome</h1>

<%--<h1>Welcome2</h1>--%>


<form id="logoutForm" method="POST" action="/logout">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <input type="submit" value="Logout!" type="button" class="btn btn-outline-secondary"/>
</form>
<div class="container">
    <c:forEach items="${pets}" var="pet">
        /////////////img
        <p><strong>Owner</strong> ${pet.owner.firstName}</p>
        <p><strong>Breed</strong> ${pet.breed}</p>
        <p><strong>Age</strong> ${pet.age}</p>
    </c:forEach>
</div>
</body>
</html>