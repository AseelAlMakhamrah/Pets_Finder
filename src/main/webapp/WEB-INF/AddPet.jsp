<%--
  Created by IntelliJ IDEA.
  User: SYSCOM
  Date: 1/23/2021
  Time: 10:54 AM
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
    <style>
       /*body{*/
       /*     background-image: url('/img/bkground.jpg');*/
       /* }*/
        .header{
            background-color: gray;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">
        <div class="logo">
            <img src="img/PetsFinder.png" height="100px" width="100px" />
        </div>
    </div>

    <form:form method="POST" action="/addPet/${id}" modelAttribute="pet">
        <div class="form-group">
            <form:label path="name"> Name:</form:label>
            <form:input path="name"/>
        </div>
        <div class="form-group">
            <form:label path="age">Age:</form:label>
            <form:input type="number" path="age" min="0" max="20"/>
        </div>
        <div class="form-group">
            <form:label path="gender">Gender:</form:label>
            <form:select path="gender" >
                    <option value="" selected>- Select -</option>
                    <option class="dropdown-item" value="Male">Male</option>
                    <option class="dropdown-item" value="Female">Female</option>
            </form:select>
        </div>
        <div class="form-group">
            <form:label path="size">Size:</form:label>
            <form:select path="size" >
                <option value="" selected>- Select -</option>
                <option  value="Mini"> Mini</option>
                <option  value="Small">Small</option>
                <option  value="Medium">Medium</option>
                <option  value="Large">Large</option>
                <option  value="Giant">Giant</option>
            </form:select>
        </div>
        <div class="form-group">
            <form:label path="breed">Breed:</form:label>
            <form:input path="breed"/>
        </div>
        <div class="form-group">
            <form:label path="notes">Notes:</form:label>
            <form:textarea path="notes"  placeholder="Leave notes here"  style="height: 100px  width:200px"></form:textarea>
        </div>

        <input type="submit" value="Add Pet" type="button" class="btn btn-outline-secondary"/>
    </form:form>
</div>
</body>
</html>
