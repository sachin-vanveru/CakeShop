<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<body background="resources/image/hd3.jpg">
<div class="container-fluid">
<%@include file="/WEB-INF/views/H_F/Header.jsp" %>

<div style="width:460px; height: 400px" class="container" >
<center>
<h3 style="color:maroon;">Register</h3>
<table class=table table-bordered">
<tr>
<td>
<label for="user_name">Enter user name</label>
</td>
<td>
<input type="u_name" class="form-control" id="u_name" placeholder="Enter user name">
</td>
</tr>

<tr>
 <td>  <label for="email">Email:</label></td>
 <td> <input type="email" class="form-control" id="email" placeholder="Enter email"></td></td>
</tr>
<tr>
<td><label for="Number">Phone number:</label></td>
<td><input type="email" class="form-control" id="nos" placeholder="Enter mobile number"></td>
</tr>
<tr>
<td><label for="pwd">Password:</label></td>
<td><input type="password" class="form-control" id="pwd" placeholder="Enter password"></td>
</tr>
<tr>
<td><label for="Cpwd">Confirm Password:</label></td>
<td><input type="Cpassword" class="form-control" id="Cpwd" placeholder="Confirm password"></td>
</tr>
<tfoot>
<td>
<button type="submit" class="btn btn-default">Submit</button>
</td>
</tfoot>
</table>
</center>
</div>
</body>
</html>