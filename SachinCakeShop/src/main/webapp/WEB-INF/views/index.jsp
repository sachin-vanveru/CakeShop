<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 80%;
      margin: auto;
     height: 400px;
      
  }
  </style>
</head>

<body style="background-color: #ffdd99">
<div class="container">

<%@include file="/WEB-INF/views/H_F/Header.jsp" %>

<div  class="container">
 <div style="height:400px" id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div  class="carousel-inner" role="listbox">
      <div class="item active">
        <img style="height: 400px;" src="<c:url value='/resources/image/ann.jpg' />" alt="anniversary" />
      </div>
     

      <div class="item">
        <img style="height: 400px;" src="<c:url value='/resources/image/birthday.jpg' />" alt="Birthday" />
      </div>
    
      <div class="item">
        <img style="height: 400px;" src="<c:url value='/resources/image/ann2.jpg' />" alt="anniversary" />
      </div>

      <div class="item">
       <img style="height: 400px;" src="<c:url value='/resources/image/ann3.jpg' />" alt="anniversary" />
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  <br>
  <table class="table"><tr><td> <img style="height: 150px; width:150px;" alt="cake" src="<c:url value='/resources/image/cake.jpg' />"> </td>
  <td><img style="height: 150px; width:150px;" alt="cake" src="<c:url value='/resources/image/cake1.jpg' />"> </td>
  <td> <img style="height: 150px; width:150px;" alt="cake" src="<c:url value='/resources/image/hd.jpg' />">  </td>
  <td> <img style="height: 150px; width:150px;" alt="cake" src="<c:url value='/resources/image/hd1.jpg' />"> </td>
  </tr>
  </table>
  </div>
</div>
  
</body>
</html>
