<%--
  Created by IntelliJ IDEA.
  User: sello
  Date: 1/22/2021
  Time: 4:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Yatra+One&amp;display=swap" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/layout.css">
    <script src="/adopt-pet-api-v0.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway&amp;display=swap">
    <link rel="stylesheet" href="/home.css">
    <link rel="icon" href="https://www.packpetresort.com/wp-content/uploads/2016/10/img2.png" type="image/x-icon">
    <title>Admin Dashboard</title>
    <style type="text/css">
        body{
            background-image: url('/img/bkground.jpg');
        }
        .container{
            background-color: white;
        }
        * {
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        .navbar-brand{
            font-family: Yatra One, cursive;
            font-size:32px;
        }
        a.active{
            font-size: 17px;
            color:#5E548E;
        }
        nav{
            font-size: 14px;
            font-weight: 400px;
            line-height: 22.4px;
            background-color: #231942;
        }

        a{
            color: whitesmoke
        }
        a:hover{
            color: #5E548E;
        }
        #addPet, #login{
            margin-right:10px
        }
        .hvr-grow {
            display: inline-block;
            vertical-align: middle;
            transform: translateZ(0);
            box-shadow: 0 0 1px rgba(0, 0, 0, 0);
            backface-visibility: hidden;
            -moz-osx-font-smoothing: grayscale;
            transition-duration: 0.3s;
            transition-property: transform;
        }





        footer{
            background-color: #231942;
            font-size:15px;
            position: relative;
            bottom: 0%;
            width: 100%;
            height: 50px;
            color: white;
            padding: 10px
        }
    </style>
    </style>
</head>
<body>

<div class="container">

    <nav class="navbar navbar-expand-lg fixed-top">
        <a class="navbar-brand" href="/">Pet Finder</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"><i class="fa fa-caret-down text-light" style="font-size:25px;" aria-hidden="true"></i></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-items mr-1">
                    <a class="nav-link " href="/home">Home</a>
                </li>
                <li class="nav-item mr-1">
                    <a class="nav-link " href="/home">Add Pet</a>
                </li>
                <li class="nav-item mr-1">
                    <a class="nav-link " href="/store">Store</a>
                </li>

                <li class="nav-item mr-1">
                    <a class="nav-link " href="/cart">Cart</a>
                </li>
                <li class="nav-item mr-1">
                    <a class="nav-link " href="/user/{id}">Profile</a>
                </li>

            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <form id="logoutForm" method="POST" action="/logout">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <input type="submit" value="Logout!" type="button" class="btn btn-outline-light hvr-grow my-2"/>
                    </form>

                </li>
            </ul>
        </div>
    </nav>
    <%--<div class="header">--%>
    <%--    <div class="logo">--%>
    <%--        <span><img src="img/PetsFinder.png" height="100px" width="100px" /></span>--%>
    <%--        <span style="float: right"><a href="/"> Home </a></span>--%>

    <%--    </div>--%>
    <%--</div>--%>
    <br>
    <br>
    <br>
    <br>

    <h4><span>Welcome <c:out value="${currentUser.firstName}"></c:out>!</span>
    </h4>

    <table border="1px"  class="table table-bordered border-primary">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th colspan="2">Action</th>
        </tr>
        <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.firstName} ${user.lastName}</td>
            <td>${user.email}</td>
            <td>
                <form  method="POST" action="/delete">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <input type="hidden" name="user" value="${user.id}"/>
                    <input type="submit" value="delete" class="btn btn-outline-danger"/>
                </form>
            </td>
            <td>
                <form  method="POST" action="/makeAdmin">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <input type="hidden" name="user" value="${user.id}"/>
                    <input type="submit" value="make-admin" class="btn btn-outline-secondary"/>
                </form>
            </td>
            </c:forEach>
        <tr>
    </table>
    <br>
    <br>
    <p><form:errors path="product.*"/></p>

    <form:form method="POST" action="/addProduct" modelAttribute="product">
        <p>
            <form:label path="price">Date:</form:label>
            <form:input type="number" path="price" class="form-control" cssStyle="width: 100px"/>
        </p>
        <p>
            <form:label path="name">Name:</form:label>
            <form:input path="name" class="form-control" cssStyle="width: 200px"/>
        </p>


        <input type="submit" value="addProduct"/>
    </form:form>
    <%--<table border="1px">--%>
    <%--    <tr>--%>
    <%--        <th>Product</th>--%>
    <%--        <th>Price</th>--%>
    <%--    </tr>--%>
    <%--    <c:forEach items="${product}" var="product">--%>
    <%--    <tr>--%>
    <%--        <td>${product.name}</td>--%>
    <%--        <td>${product.price}</td>--%>

    <%--        </c:forEach>--%>
    <%--</table>--%>
</div>
</body>
</html>