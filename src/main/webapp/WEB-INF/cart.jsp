<%--
  Created by IntelliJ IDEA.
  User: sello
  Date: 1/23/2021
  Time: 1:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Cart Page</title>
</head>
<body>

<table cellpadding="2" cellspacing="2" border="1">
    <tr>
        <th>id</th>
        <th>Name</th>
        <th>Photo</th>
        <th>Price</th>
    </tr>
    <c:set var="total" value="0"></c:set>
    <c:forEach  items="${products}" var="item" >
        <c:set var="total" value="${total + item.price}"></c:set>
        <tr>

            <td>${item.id }</td>
            <td>${item.name}</td>
            <td>
                <img src="${pageContext.request.contextPath }/${item.product.photo }" width="120">
            </td>
            <td>${item.price }</td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="4" align="right">Total</td>
        <td>${total }</td>
    </tr>
</table>
<br>
</body>
</html>