<%@page isELIgnored="false"   language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #ffdd99">
<%@include file="/WEB-INF/views/H_F/Header.jsp" %>
<div class="container">
<table class="table">
<tr>
 <td> <img src="<c:url value='/resources/image/${product.i_name}' />" alt="no images" width="300" height="300" /></td></tr>
     <br>
<tr>
${product.pid}
</tr>
<tr>
${product.pname}
</tr>
<tr> ${product.desc}</tr>
<tr>${product.qty}</tr>

</table>
</div>
</body>
</html>