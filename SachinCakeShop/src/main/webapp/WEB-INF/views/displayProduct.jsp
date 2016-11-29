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
<div class="container">
<%@include file="/WEB-INF/views/H_F/Header.jsp" %>

    <table style="align:'center'" class="table">
     <tr>
          <td> <img src="<c:url value='/resources/image/${product.i_name}' />" alt="no images" width="300" height="300" /></td>
          </tr>
     
  <tr><td>product Id:  ${product.pid} </td>
</tr>
<tr>
<td>Product name: ${product.pname} </td>
</tr>
<tr><td>Product Description : ${product.desc}</td></tr>
<tr><td>Price ${product.price}</td> </tr>
<tr><td>quantity ${product.qty}</td></tr>

</table>
</div>
</body>
</html>