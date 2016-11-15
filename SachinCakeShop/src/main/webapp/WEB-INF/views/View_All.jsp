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
<body style="height:150px;" background="/resources/image/hd3.jpg">
<%@include file="/WEB-INF/views/H_F/Header.jsp" %>
<div class="row">
    <div class="col-sm-9 col-md-6">
      
       <img alt="cake" src="<c:url value='/resources/image/ann.jpg'/>" />
         </div>
    <div class="col-sm-9 col-md-6">
         <img  src="<c:url value='/resources/image/birthday.jpg'/>" alt="Birthday" />
         </div>
         </div>

<table class="table">
   <th> <td> Cakes.... </td> </th>
</table>
</body>
</html>