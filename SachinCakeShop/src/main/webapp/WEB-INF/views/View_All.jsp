<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC1 "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CAKES</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value='/resources/js/AngularProductController.js' />"></script>
</head>
<body ng-app="myapp" style="background-color: #ffdd99">
<div   class="container">

<%@include file="/WEB-INF/views/H_F/Header.jsp" %>

<Div class="container">
 <input type="text" /><button class="default"><span class="glyphicon glyphicon-search"> </span></button> 
<div ng-controller="myCtrl">

<table width="100%"   class="table">

<tr>
   <td ng-repeat="product in data">
   <table>
   <tr>
   <td>
   <img src="<c:url value='/resources/image/{{product.i_name}}' />" alt="no images" width="100" height="100" /></td>
  </tr>
  <tr>
   <td>Cake: {{product.pname}} </td>
  </tr>
  <tr>
   <td>Rs.{{product.price}}</td>
   </tr>
   <tr>
   <td>
   <a href="disp?id={{product.pid}}" class="btn btn-primary">View</a>
   </td>
   </tr>
   
   </table>
   &nbsp;
   
    </td>
  </tr>
 </table>
</div>

 <a class="btn btn-block btn-social btn-twitter">
    <span class="fa fa-twitter"></span> Sign in with Twitter
  </a>
   <a class="btn btn-block btn-social btn-facebook">
    <span class="fa fa-twitter"></span> Sign in with facebook
  </a>  
  </div>
</div>
</body>
</html>