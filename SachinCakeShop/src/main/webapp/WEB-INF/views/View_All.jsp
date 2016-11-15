<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC1 "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #ffdd99">
<div class="container">

<%@include file="/WEB-INF/views/H_F/Header.jsp" %>

<Div class="container">
<table class="table" align="center">
   <th> 
   <td>  <input type="text" /><button class="default"><span class="glyphicon glyphicon-search"> </span></button> </td>
   </th>
   <tr> 
      <td> <a href="#"><img style="height:200px;width:260px" src="<c:url value='/resources/image/ann.jpg' />" /></a> </td>
      <td> <a href="#"><img style="height:200px; width:260px" src="<c:url value='/resources/image/ann1.jpg' />" /></a> </td>
      <td> <a href="#"><img style="height:200px;width:260px" src="<c:url value='/resources/image/ann2.jpg' />" /></a> </td>
      <td> <a href="#"><img style="height:200px;width:260px" src="<c:url value='/resources/image/ann3.jpg' />" /></a> </td>
   </tr>
      <tr> 
      <td> <a href="#"><img style="height:200px;width:260px" src="<c:url value='/resources/image/ann4.jpg' />" /></a> </td>
      <td> <a href="#"><img style="height:200px;width:260px" src="<c:url value='/resources/image/birthday.jpg' />" /></a> </td>
      <td> <a href="#"><img style="height:200px; width:250px" src="<c:url value='/resources/image/birthday1.jpg' />" /></a> </td>
      <td> <a href="#"><img style="height:200px; width:260px" src="<c:url value='/resources/image/birthday2.jpg' />" /></a> </td>
   </tr>
 <tr> 
      <td> <a href="#"><img style="height:200px;width:260px" src="<c:url value='/resources/image/hd.jpg' />" /></a> </td>
      <td> <a href="#"><img style="height:200px;width:260px" src="<c:url value='/resources/image/hd1.jpg' />" /></a> </td>
      <td> <a href="#"><img style="height:200px;width:260px" src="<c:url value='/resources/image/hd2.jpg' />" /></a> </td>
      <td> <a href="#"><img style="height:200px; width:260px " src="<c:url value='/resources/image/hd3.jpg' />" /></a> </td>
   </tr>
   
<tr> 
      <td> <a href="#"><img style="height:200px;width:260px" src="<c:url value='/resources/image/cake.jpg' />" /></a> </td>
      <td> <a href="#"><img style="height:200px;width:260px" src="<c:url value='/resources/image/cake1.jpg' />" /></a> </td>
      <td> <a href="#"><img style="height:200px;width:260px" src="<c:url value='/resources/image/cake2.jpg' />" /></a> </td>
      <td> <a href="#"><img style="height:200px; width:260px " src="<c:url value='/resources/image/cake3.jpg' />" /></a> </td>
   </tr>
<tr> 
      <td> <a href="#"><img style="height:200px;width:260px" src="<c:url value='/resources/image/cake4.jpg' />" /></a> </td>
      <td> <a href="#"><img style="height:200px;width:260px" src="<c:url value='/resources/image/cake5.jpg' />" /></a> </td>
      <td> <a href="#"><img style="height:200px;width:260px" src="<c:url value='/resources/image/cake6.jpg' />" /></a> </td>
      <td> <a href="#"><img style="height:200px; width:260px " src="<c:url value='/resources/image/rainbow-cake.jpg' />" /></a> </td>
   </tr>
   <tr> 
      <td> <a href="#"><img style="height:200px;width:260px" src="<c:url value='/resources/image/Vanilla-Birthday-Cake.jpg' />" /></a> </td>
      <td> <a href="#"><img style="height:200px;width:260px" src="<c:url value='/resources/image/cake1.jpg' />" /></a> </td>
      <td> <a href="#"><img style="height:200px;width:260px" src="<c:url value='/resources/image/cake2.jpg' />" /></a> </td>
      <td> <a href="#"><img style="height:200px; width:260px " src="<c:url value='/resources/image/cake3.jpg' />" /></a> </td>
   </tr>
   
</table>
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