<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <spring:form class="form" action="/addCategory" modelAttribute="category" >
      Enter ID:
      <spring:input id="cid" path="cid" clss="form-control"/>
      enter category name
    <spring:input id="cname" path="cname" clss="form-control"/>
    Enter description
    <spring:input id="cdesc" path="cdesc" clss="form-control"/>
    <spring:button type="button" value="addCategory">enter </spring:button>
    </spring:form>
</body>
</html>