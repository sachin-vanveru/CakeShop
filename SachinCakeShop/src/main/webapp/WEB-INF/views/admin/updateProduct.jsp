<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Product</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 
   <style>
.errStyle {
	color:red;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>
<body style="background-color: #ffdd99">
<div class="container">
<%@ include file="/WEB-INF/views/Template/Header.jsp" %>
<div style="width: 50%; class="container">
<form:form modelAttribute="product" enctype="multipart/form-data" role="form" action="edit" >
<form:input style="visibility:hidden;" path="pid" />
<form:input style="visibility:hidden;" path="image" />
 <div class="form-group">
 <form:label  path="name">
				<spring:message text="Product Name"/>
</form:label>
<form:input class="form-control" path="name" />
<form:errors path="name">
<p class="errStyle">
* Product Name should be atleast 3 characters
</p>
 </form:errors>
 </div>
 <div class="form-group">
 <form:label  path="qty">
				<spring:message text="Quantity Available"/>
</form:label>
<form:input class="form-control" path="qty" />
<form:errors path="qty" >
<p class="errStyle">
* should be greater than 1
</p>
 </form:errors>
 </div>
 <div class="form-group">
 <form:label  path="price">
				<spring:message text="Product Price"/>
</form:label>
<form:input class="form-control" path="price" />
<form:errors path="price" >
<p class="errStyle">
* should be greater than 1
</p>
 </form:errors>
 </div>
 <div class="form-group">
 <form:label  path="category">
				<spring:message text="Category"/>
</form:label>
<form:select class="form-control" path="category" >
<form:option value="Birthday">Birthday</form:option>
<form:option value="Anniversary">Anniversary</form:option>
<form:option value="SpecialEvents">Special Events</form:option>
</form:select>

 </div>

 

 
 
 <div class="form-group">
 <form:label  path="desc">
				<spring:message text="Description"/>
</form:label>
  <form:input class="form-control" path="desc" />
  <form:errors path="name">
  
  <p class="errStyle">
* Cannot be blank
</p>
 </form:errors>
 </div>
 
   <div class="form-group">
   
 <label>Upload Image</label>
  <form:input type="file"  path="file"  class="form-control" />
   <form:errors path="file" >
  <p class="errStyle">
 * Cannot be blank
 </p>
 </form:errors>
 Uploaded Image:<form:input disabled="true" path="image"/>
 </div>
 <div class="form-group">
 <input  class="btn btn-info"  type="submit"
					value="<spring:message text="Update Product"/>" />
 </div>

</form:form>
</div>
<%@include file="/WEB-INF/views/Template/Footer.jsp" %>
</div>


</body>
</html>