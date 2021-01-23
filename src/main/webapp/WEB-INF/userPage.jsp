<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: jodhl
  Date: 1/23/2021
  Time: 9:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1> Name : ${user.firstName} ${user.lastName}</h1>
<h2>Location: ${user.location}</h2>
<h2>email: ${user.email}</h2>
<h2>phoneNumber: ${user.phoneNumber}</h2>
<h2>user_visit ${user_visit.id}</h2>
<h2>user: ${user.id}</h2>
<c:choose>
   <c:when test="${user_visit.id==user.id}">
       <div>

           <p><form:errors path="user.*"/></p>

           <form:form method="POST" action="/user/${user.id}" modelAttribute="user">
               <input type="hidden" name="_method" value="put">
               <p>
                   <form:label path="firstName">First Name:</form:label>
                   <form:input path="firstName" />
               </p>
               <p>
                   <form:label path="lastName">Last Name:</form:label>
                   <form:input path="lastName"/>
               </p>
               <p>
                   <form:label path="location">Location:</form:label>
                   <form:input path="location"/>
                   <form:label path="phoneNumber">Phone Number:</form:label>
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
