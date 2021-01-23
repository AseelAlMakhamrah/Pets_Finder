<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: jodhl
  Date: 1/23/2021
  Time: 9:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html><head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home</title>
    <!-- Latest compiled and minified CSS -->
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
    <style>
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
</head>

<body>

<nav class="navbar navbar-expand-lg fixed-top">
    <a class="navbar-brand" href="/home">Pet Finder</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"><i class="fa fa-caret-down text-light" style="font-size:25px;" aria-hidden="true"></i></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
            <li class="nav-items mr-1">
                <a class="nav-link " href="/home">Home</a>
            </li>
            <li class="nav-item mr-1">
                <a class="nav-link " href="/addPet">Add Pet</a>
            </li>
            <li class="nav-item mr-1">
                <a class="nav-link " href="/store">Store</a>
            </li>

            <li class="nav-item mr-1">
                <a class="nav-link " href="/cart">Cart</a>
            </li>
            <li class="nav-item mr-1">
                <a class="nav-link " href="/user/${currentUser.id}">Profile</a>
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
<br>
<br>

<br>
<h3> Name : ${user.firstName} ${user.lastName}</h3>
<h4>Location: ${user.location}</h4>
<h4>email: ${user.email}</h4>
<h4>phoneNumber: ${user.phoneNumber}</h4>
<%--<h4>user_visit ${user_visit.id}</h4>--%>
<%--<h2>user: ${user.id}</h2>--%>




<br>
<br>
<c:choose>
   <c:when test="${user_visit.id==user.id}">
       <div>

           <p><form:errors path="user.*"/></p>

           <form:form method="POST" action="/user/${user.id}" modelAttribute="user">
               <input type="hidden" name="_method" value="put">
               <p>
                  <h5> <form:label path="firstName">First Name:</form:label></h5>
                   <form:input path="firstName" />
               </p>
               <p>
                   <h5><form:label path="lastName">Last Name:</form:label></h5>
                   <form:input path="lastName"/>
               </p>
               <p>
                  <h5> <form:label path="location">Location:</form:label></h5>
                   <form:input path="location"/>
                   <h5><form:label path="phoneNumber">Phone Number:</form:label></h5>
                   <form:input type="number" path="phoneNumber"/>
               </p>
               <input type="submit" value="Edit User"/>
           </form:form>
           <a href="/home">Back</a>
       </div>
   </c:when>

</c:choose>
<br>
<br>
<c:forEach items="${allPets}" var="pet">
    <h1>${pet.name}</h1>
    <h3>Breed: ${pet.breed}</h3>
    <h3>Type : ${pet.type}</h3>
    <h3>Age : ${pet.age}</h3>
    <h3>Gender : ${pet.gender}</h3>
</c:forEach>

</body>
</html>
