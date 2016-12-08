<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: #ffdd99">
<div class="container">
<%@include file="/WEB-INF/views/H_F/Header.jsp" %>
<div class="container">
${successMsg}
 <table>
 <tr>
    <td>
    <spring:form class="form" action="addCategory" modelAttribute="category" >
          Enter ID:</td>
      <td><spring:input id="cid" path="cid" clss="form-control"/></td></tr>
     <tr> <td>enter category name</td>
    <td><spring:input id="cname" path="cname" clss="form-control"/></td></Tr>
    <tr><td>Enter description</td>
    <td><spring:input id="cdesc" path="cdesc" clss="form-control"/></td></tr>
   <tr><td><spring:button type="submit" value="addCategory" class="btn btn-primary">Add Category</spring:button></td></tr>
    </spring:form>

    
    </table>
    </div>
    </div>
</body>
</html>