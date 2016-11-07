<!DOCTYPE html>
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
      width: 70%;
      margin: auto;
      height:400px;
  }
  </style>
</head>
<body style="height:150px;" background="resources/image/hd3.jpg">
<div class="Continer-fluid">

<Div class="continer">
 <nav  class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Sachin Cake..</a>
    </div>
    <ul  class="nav navbar-nav">
      <li class="active"><a href="index.jsp">Home</a></li>
      <li><a href="Contact_us.jsp">Contact US</a></li>
      <li><a href="About_US.jsp">About Us</a></li>
          <ul  class="nav navbar-nav">
      <li class="active"><a href="index.jsp">Home</a></li>
      <li><a href="Contact_us.jsp">Contact US</a></li>
      <li><a href="About_US.jsp">About Us</a></li>
      <li>
       <a class="dropdown-toggle" data-toggle="dropdown" href="#">
       Category <span class="caret"></span></a>
       <ul class="dropdown-menu" role="menu">
        <li><a href="#">1</a> </li>
        <li><a href="#">2</a> </li>
        <li><a href="#">3</a> </li>
        <li><a href="#">4</a> </li>
        </ul>
      </li>      <li><a href="Register.jsp">Register</a></li>
    </ul>
    
    <ul class="nav navbar-nav navbar-right">

    <li> <a href="#"> <span class="glyphicon glyphicon-search"> </span> search</a> </li>
    <li> <a href="#" > <span class="glyphicon glyphicon-log-in"> </span> log in</a> </li>
    </ul>
  </div>
</nav>
</Div>

<div style="height:400px" Class="container-fluid">
 <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/image/welcome-cake.jpg" alt="anniversary" width="460" height="345">
      </div>
     

      <div class="item">
        <img src="resources/image/birthday.jpg" alt="Birthday" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="resources\image\ann4.jpg" alt="anniversary" width="460" height="345">
      </div>

      <div class="item">
        <img src="resources\image\hd3.jpg" alt="Flower" width="460" height="345">
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
</div>
<div>
  </div>
</div> 
</body>
</html>
