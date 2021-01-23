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
<br>
<br>

<br>
<div class="row mt-4 ml-3 mr-3 mb-5">
    <div class="col-md-4 col-xl-3 col-lg-4 col-sm-6 mb-5">
        <div class="card">
            <img src="https://res.cloudinary.com/petfinder/image/upload/v1567306475/evbgbs74pwo77qonk7ol.jpg" id="cardImg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Rocky</h5>
                <p class="card-text">Age: 1</p>
                <p class="card-text">Breed: beagle</p>
            </div>
            <div class="card-footer">
                <a href="" class="btn btn-sm mx-2 detailsBtn">Owner</a>
                <a href="/user/{id}" class="btn btn-sm btn-outline-primary mx-2 btn-adopt" value="5d6b32eb39ed542d573e72a3" href="#"> Aseel </a>
            </div>
        </div>
    </div>
    <div class="col-md-4 col-xl-3 col-lg-4 col-sm-6 mb-5">
        <div class="card">
            <img src="https://res.cloudinary.com/petfinder/image/upload/v1568125594/tjcsjcjl36qrkulpnw4g.jpg" id="cardImg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Simbha</h5>
                <p class="card-text">Age: 4 months</p>
                <p class="card-text">Breed: Pug</p>
            </div>
            <div class="card-footer">
                <a href="" class="btn btn-sm mx-2 detailsBtn">Owner</a>
                <a href="/user/{id}" class="btn btn-sm btn-outline-primary mx-2 btn-adopt" value="5d6b32eb39ed542d573e72a3" href="#"> Aseel </a>
            </div>
        </div>
    </div>
    <div class="col-md-4 col-xl-3 col-lg-4 col-sm-6 mb-5">
        <div class="card">
            <img src="https://res.cloudinary.com/petfinder/image/upload/v1568257391/ntik0m53f7ssupsccveu.jpg" id="cardImg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Liana</h5>
                <p class="card-text">Age: 4 months</p>
                <p class="card-text">Breed: Dwarf cat</p>
            </div>
            <div class="card-footer">
                <a href="" class="btn btn-sm mx-2 detailsBtn">Owner</a>
                <a href="/user/{id}" class="btn btn-sm btn-outline-primary mx-2 btn-adopt" value="5d6b32eb39ed542d573e72a3" href="#"> loay </a>
            </div>
        </div>
    </div>
    <div class="col-md-4 col-xl-3 col-lg-4 col-sm-6 mb-5">
        <div class="card">
            <img src="https://res.cloudinary.com/petfinder/image/upload/v1568260402/ju4itqaejpjlojqrjz59.jpg" id="cardImg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Koda</h5>
                <p class="card-text">Age: 3 Years</p>
                <p class="card-text">Breed: German Shepherd</p>
            </div>
            <div class="card-footer">
                <a href="" class="btn btn-sm mx-2 detailsBtn">Owner</a>
                <a href="/user/{id}" class="btn btn-sm btn-outline-primary mx-2 btn-adopt" value="5d6b32eb39ed542d573e72a3" href="#"> Shatha </a>
            </div>
        </div>
    </div>
    <div class="col-md-4 col-xl-3 col-lg-4 col-sm-6 mb-5">
        <div class="card">
            <img src="https://res.cloudinary.com/petfinder/image/upload/v1568262729/kwmwym9uk9p7kr5uid49.jpg" id="cardImg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">jack</h5>
                <p class="card-text">Age: 4 months</p>
                <p class="card-text">Breed: Boston Terrier</p>
            </div>
            <div class="card-footer">
                <a href="" class="btn btn-sm mx-2 detailsBtn">Owner</a>
                <a href="/user/{id}" class="btn btn-sm btn-outline-primary mx-2 btn-adopt" value="5d6b32eb39ed542d573e72a3" href="#"> Loay </a>
            </div>
        </div>
    </div>
    <div class="col-md-4 col-xl-3 col-lg-4 col-sm-6 mb-5">
        <div class="card">
            <img src="https://res.cloudinary.com/petfinder/image/upload/v1568264895/rrtkrssdbealmzynyli2.jpg" id="cardImg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Jack</h5>
                <p class="card-text">Age: 1 Years</p>
                <p class="card-text">Breed: Bulldog</p>
            </div>
            <div class="card-footer">
                <a href="" class="btn btn-sm mx-2 detailsBtn">Owner</a>
                <a href="/user/{id}" class="btn btn-sm btn-outline-primary mx-2 btn-adopt" value="5d6b32eb39ed542d573e72a3" href="#"> Aseel </a>
            </div>
        </div>
    </div>
    <div class="col-md-4 col-xl-3 col-lg-4 col-sm-6 mb-5">
        <div class="card">
            <img src="https://res.cloudinary.com/petfinder/image/upload/v1568718268/sokmxkrhlikvi0ruypim.jpg" id="cardImg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Saave</h5>
                <p class="card-text">Age: 4 months</p>
                <p class="card-text">Breed: Belgian Shepherd Dog (Laekenois)</p>
            </div>
            <div class="card-footer">
                <a href="" class="btn btn-sm mx-2 detailsBtn">Owner</a>
                <a href="/user/{id}" class="btn btn-sm btn-outline-primary mx-2 btn-adopt" value="5d6b32eb39ed542d573e72a3" href="#"> shatha </a>
            </div>
        </div>
    </div>
    <div class="col-md-4 col-xl-3 col-lg-4 col-sm-6 mb-5">
        <div class="card">
            <img src="https://res.cloudinary.com/petfinder/image/upload/v1569499611/d5uz9ufkcvfttbmocgjb.jpg" id="cardImg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Murphy</h5>
                <p class="card-text">Age: 1 month</p>
                <p class="card-text">Breed: Bengal</p>
            </div>
            <div class="card-footer">
                <a href="" class="btn btn-sm mx-2 detailsBtn">Owner</a>
                <a href="/user/{id}" class="btn btn-sm btn-outline-primary mx-2 btn-adopt" value="5d6b32eb39ed542d573e72a3" href="#"> Sara </a>
            </div>
        </div>
    </div>
    <footer class=" text-center" style="height:60px; backcground-color:#231942">©-2019 || Pet Finder
        <i class="fa fa-envelope ml-2" aria-hidden="true"></i>

    </footer>



</body>
</html>



