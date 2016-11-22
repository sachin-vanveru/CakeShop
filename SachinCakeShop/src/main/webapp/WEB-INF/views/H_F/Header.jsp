<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<center>
<a href="#">
<img align="top" src="<c:url value='/resources/image/LogoBanner.jpg' />" class="img-rounded" alt="cake shop" width="600" height="160" />
</a>
</center>
<nav style="background-color:#ff0055;" class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a style="color:black" href="/SachinCakeShop">Home</a></li>
      <li class="dropdown"><a style="color:white" class="dropdown-toggle" data-toggle="dropdown" href="#">category <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a style="color:white" href="#">Page 1-1</a></li>
          <li><a style="color:white" href="#">Page 1-2</a></li>
          <li><a style="color:white" href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li><a style="color:white" href="contact_us">Contact us</a></li>
      <li><a style="color:white" href="About_us">About us</a></li>
      <li><a style="color:white" href="view_All">View all</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="Register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
<div class="modal fade" id="myModal" role="dialog">

    <div class="modal-dialog modal-sm">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
       
          <button type="button" class="close btn btn-default" data-dismiss="modal">&times;</button>
        <lable> Log In </lable>
        </div>
        <div class="modal-body">
            <table class="table">
             <tr> <td> <lable for="inputname" class="control-label"> name </lable> </td>
                  <td><input type="text" class="Form-control" id="inputName" placeholder="enter name" required="required" />
          </td>
          </tr>
          <tr>
          <td><label for="pwd">Password:</label></td>
          <td> <input type="password" class="form-control" id="pwd" placeholder="Enter password" required="required" /></td>
        </tr>
        </table>
        </div>
        <div class="modal-footer">
        <table class=table>
        <tr>
        <td> <a href="Register">Register now</a> </td>
         <td> <button type="button" class="btn btn-default" data-dismiss="modal">submit</button></td>
        </tr>
        </table>
        </div>

</nav>
 </div>
</body>
</html>

