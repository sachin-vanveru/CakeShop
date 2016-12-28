<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>Home</title>
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

<%@include file="/WEB-INF/views/Template/Header.jsp" %>

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
  </div>
  <div class="container">
  <div style="border-top-width: 35in;" class="col-sm-6">
 <p style="font-family:cursive;color:red;font-size: medium;">
 	Barbie Dolls have been around for a lot of time now, it is said that a girl<br>
 	will never forget her first Barbie doll, No matter how old she get.</p>
 	<p style="font-family:cursive;color:red;font-size: medium;"> We use cake to celebrate happy occasions and make a memorable movement.<br>
 	 Everyone like cake because of its different flavor which make is very testy.  </p>
 	 <p style="font-family:cursive;color:red;font-size: medium;">
 	      There are different flavors of cake. You can order any cake according to<br>
 	       celebration and your choice. Cake may be in any size big small or medium<br> 
 	       but size of the cake does not matter main thing is taste of the cake because<br> 
 	       everyone like tasty cake.
 	  </p>
 	</div>
 
  <div style="width:75px" class="col-sm-5"><iframe width="560" height="315" src="https://www.youtube.com/embed/eE-zAcJusWU" frameborder="0" allowfullscreen></iframe>
  </div>
  </div>
<br><br>
  <div style="height: 30px;"></div>
    <div class="row">
       <div class="col-sm-4">
         <a href="view_All?id=1">
           <img height="300px" width="300px" alt="BirthdayCake" src="<c:url value='/resources/image/Vanilla-Birthday-Cake.jpg' />" />
         </a>
         <br>
         <h3 style="font-family:cursive;color:red;">Birthday Cake</h3>
       </div>
       <div class="col-sm-4">
         <a href="view_All?id=2">
           <img  height="300px" width="300px" alt="Anniversary Cake" src="<c:url value='/resources/image/ann5.jpg'/>" />
         </a>
         <br>
         <h3 style="font-family:cursive;color:red;">Anniversary Cake</h3>
       </div>   
       <div class="col-sm-4">
         <a href="view_All?id=3">
         <img height="300px" width="300px" alt="Special Events" src="<c:url value="/resources/image/SE.jpg" />" />
         </a>
         <br>
         <h3 style="font-family:cursive;color:red;">Special Event Cake</h3>
       </div>
    </div>

<%@include file="/WEB-INF/views/Template/Footer.jsp" %>
</div>
  
</body>
</html>
