<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    
<!DOCTYPE html PUBLIC1 "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>CAKES</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value='/resources/js/AngularProductController.js' />"></script>
</head>
<body ng-app="myapp" style="background-color: #ffdd99;">
<div class="container" >
<%@include file="/WEB-INF/views/Template/Header.jsp" %>
<marquee>
 <label style=" color: activecaption;">Support: +91 9831319069, 10 AM - 08 PM IST ||    Send Cakes and Gifts Same Day and at Midnight India-wide ||    All Indian Major Debit/Credit Cards , Net Banking Available, 3000 + Express Delivery Gifts India     We Accept: International Credit/Debit Cards , JCB / American Express Cards, Dinners Citi Cards,     Same Day Delivery Accepted till 5 PM IST, 365 Days Delivery ||
 </label>
 </marquee>
 

<Div class="container">
<div ng-controller="myCtrl"  class="container">
<div align="justify">
 <input type="text" id="query" ng-model="query" />
 <button class="default"><span class="glyphicon glyphicon-search"> </span></button>
 </div>
   <span style="color:green;font-size:20px;">
 ${msg}
 <br/>
 </span>
    <c:set var="pid" value="${param.id}"></c:set>
	<c:if test="${!(pid<=3)}" >
		<c:set var="pid" value="4" />
	</c:if>
<table style="width: 100%;" class="table">
<tr>
<th ng-click="sort('pid')"><a style="color: red;" href="#"> <span class="glyphicon glyphicon-chevron-down"> Product Id</span></a> </th>
<th ng-click="sort('image')"> <a style="color: red;" href="#">  <span class="glyphicon glyphicon-chevron-down">  Product</span></a>  </th>
<th ng-click="sort('name')"> <a style="color: red;" href="#"> <span class="glyphicon glyphicon-chevron-down">  Cake name</span></a>  </th>
<th ng-click="sort('price')"> <a style="color:red;" href="#"> <span class="glyphicon glyphicon-chevron-down"> price</span></a>  </th>
<th></th>
</tr>
	<c:if test="${pid==1}" >
	<tr ng-repeat="product in data|filter:{category:'Birthday'}|filter:query|orderBy:sortKey:reverse" >
	</c:if>
	
	<c:if test="${pid==2}" >
	<tr ng-repeat="product in data|filter:{category:'Anniversary'}|filter:query|orderBy:sortKey:reverse" >
	</c:if>
	
	<c:if test="${pid==3}" >
	<tr ng-repeat="product in data|filter:{category:'SpecialEvents'}|filter:query|orderBy:sortKey:reverse" >
	</c:if>
	<c:if test="${pid==4}" >
		<tr ng-repeat="product in data|filter:query|orderBy:sortKey:reverse">
	</c:if>
   <td>{{product.pid}} </td>
   <td ><img src="<c:url value='/resources/image/{{product.category}}/{{product.image}}' />"
    alt="no images" width="100" height="100" /></td>
   <td> {{product.name}} </td>
   <td>Rs.{{product.price}}</td>
   
  <td> <a href="disp?id={{product.pid}}" class="btn btn-primary">View</a></td>
  
  <td>
  
  
  <c:set var="productid" value="{{product.pid}}" />
 
  	<security:authorize access="hasRole('ROLE_USER')" >
            <span ng-if="product.qty==0 ">
          	<a  href="err"> <button class="btn btn_primary">
                  <span class="glyphicon glyphicon-shopping-cart"></span> Add To Cart
               </button>
               </a>
               </span>  
            <span ng-if="product.qty!=0 ">
               <a ng-click="addItemToCart(product.pid)" > <button class="btn btn_primary">
                  <span class="glyphicon glyphicon-shopping-cart"></span> Add To Cart
               </button>
               </a>     
          </span>
          
          </security:authorize>
          
          
            <security:authorize access="isAnonymous()">
            <a href="login"><button class="btn btn_primary">
            <span class="glyphicon glyphicon-shopping-cart"></span>add to cart 
            </button>
            </a>
            </security:authorize>
  </td>
  <security:authorize access="hasRole('ROLE_ADMIN')">
   <td> <a href="/SachinCakeShop/admin/edit?id={{product.pid}}" class="btn btn-primary">EDIT</a></td>
   <td> <a href="/SachinCakeShop/admin/delete?id={{product.pid}}" class="btn btn-primary">DELETE</a></td>
   </security:authorize>
   
   </tr>
   </table>
      
</div>
<%@include file="/WEB-INF/views/Template/Footer.jsp" %>
</div>
</div>
</div>
</body>
</html>