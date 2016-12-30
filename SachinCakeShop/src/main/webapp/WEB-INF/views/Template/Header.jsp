<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<center>
<a href="#">
<img align="top" src="<c:url value='/resources/image/LogoBanner.jpg' />" class="img-rounded" alt="cake shop" width="600" height="160" />
</a>
</center>

<Div>
 <nav style="background-color:#ff0055;" class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><label style="color: white"> Cakes Shop </label></a>
    </div>
    <ul  class="nav navbar-nav">
      <li  class="active"><a style="color: white" href="/SachinCakeShop">Home </a></li>
      <li><a style="color: white; font-family: serif; font-size: large; " href="/SachinCakeShop/contact_us"> Contact Us</a></li>
      <li class="dropdown"><a style="color: white;" class="dropdown-toggle" data-toggle="dropdown" href="#">Category <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="/SachinCakeShop/view_All?id=1">Birthday</a></li>
          <li><a href="/SachinCakeShop/view_All?id=2">Anniversary</a></li>
          <li><a href="/SachinCakeShop/view_All?id=3">SpecialEvent</a></li>
        </ul>
      </li>
      <li><a style="color: white; font-family: serif; font-size: large; " href="/SachinCakeShop/About_us"> About us</a></li>
      <li><a style="color: white; font-family: serif; font-size: large; " href="/SachinCakeShop/view_All">View All </a></li>
      
      
      
      <security:authorize access="hasRole('ROLE_ADMIN')">
         
      		<li><a style="color: white; font-family: serif; font-size: large; "  href="/SachinCakeShop/admin/add">  Add Product</a></li>
      </security:authorize>
    </ul>
    <ul class="nav navbar-nav navbar-right">
       
			<security:authorize access="isAnonymous()">
			       <li><a style="color: white; font-family: serif; font-size: large; "  href="/SachinCakeShop/Register"> <span class="glyphicon glyphicon-user"></span> Register</a></li>
				<li><a style="color: white; font-family: serif; font-size: large; "  href="login"><span class="glyphicon glyphicon-hand-right"></span>View Cart</a></li>
				<li><a style="color: white; font-family: serif; font-size: large; "  href="login"> <span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</security:authorize>
			<security:authorize access="isAuthenticated()">
				<li><span class="glyphicon"></span>Welcome <%= request.getUserPrincipal().getName() %>
				</li>
				<security:authorize access="hasRole('ROLE_USER')">
				<li><a style="color: white; font-family: serif; font-size: large; "  href="<c:url value='/memberShip'/>"><span
						class="glyphicon glyphicon-hand-right"></span>View Cart</a></li>
						</security:authorize>
				<li><a style="color: white; font-family: serif; font-size: large; "  href='<c:url value="/logout1" />' class="btn btn_primary">
						<span class="glyphicon glyphicon-log-out"></span> Logout
				</a></li>
			</security:authorize>
		</ul>
		</div>
</nav>

</Div>
</body>
</HTML>