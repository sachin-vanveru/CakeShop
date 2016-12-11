<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<center>
<a href="#">
<img align="top" src="<c:url value='/resources/image/LogoBanner.jpg' />" class="img-rounded" alt="cake shop" width="600" height="160" />
</a>
</center>

<Div>
 <nav style="background-color:#ff0055;" class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><label style="color: white"> Cakes Shop </label></a>
    </div>
    <ul  class="nav navbar-nav">
      <li class="active"><a href="/SachinCakeShop"><label style="color: white"> Home </label></a></li>
      <li><a href="/SachinCakeShop/contact_us"><label style="color: white"> Contact Us </label></a></li>
      <li><a href="/SachinCakeShop/About_us"><label style="color: white"> About us </label></a></li>
      <li><a href="/SachinCakeShop/view_All"><label style="color: white"> View All </label></a></li>
      
      <li><a href="/SachinCakeShop/Register"><label style="color: white"> Register </label></a></li>
      <li><a href="/SachinCakeShop/admin/add"> <label style="color: white"> Add Product</label></a></li>      
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li>
    <a href="/SachinCakeShop/Login">
  <button style="background-color: red; border: red" class="btn btn-info btn-xm" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"> </span> log in </button>
  </a>
    </li>
    </ul>
  </div>
</nav>

</Div>
</body>
</HTML>