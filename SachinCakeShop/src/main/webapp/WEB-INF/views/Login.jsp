<%@ page language="java" isELIgnored="false" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
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
<body style="background-color: #ffdd99">
  <div class="container">
<%@ include file="/WEB-INF/views/Resource/Header.jsp" %>

<c:if test="${error=='true'}">

  <div class="errorblock">
   Your login attempt was not successful, try again.
 
  </div>
 </c:if>
 <c:if test="${not empty logoutmsg }">
   <div class="logoutblock">
   <c:out value="${logoutmsg}" />
   </div>
 </c:if>
 
<form role="form" action="<c:url value='login' />" method="post" >
  <div class="form-group">	
    <label for="username">UserName:</label>
    <input type="text" id="username" name="username"  class="form-control" />
  </div>
  <div class="form-group">
    <label for="password">Password:</label>
    <input type="password" id="password" class="form-control" name="password" />
  </div>
  		  <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
  
  <button type="submit"  class="btn btn-default" >Submit</button>
</form>
<h4>Not A User ? <a href="Register">Sign Up Here</a></h4>
</div>
</body>
</html>