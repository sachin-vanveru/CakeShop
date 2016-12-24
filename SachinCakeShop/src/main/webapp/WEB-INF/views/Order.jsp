<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <script src="<c:url value='/resources/js/AngularProductController.js'/>"></script>
</head>
<body style="background-color: #ffdd99">
  <div class="container"ng-app="myapp" ng-controller = "myCtrl" ng-init="clearCartItems()">
<%@ include file="/WEB-INF/views/Template/Header.jsp" %>
<h3>Your Order has been Sucessfully Placed.. You will recieve Item in 7 days</h3>

 <a href="<c:url value='/'/>" class="btn btn-primary center">Continue Shopping</a>

</div>

</body>
</html>