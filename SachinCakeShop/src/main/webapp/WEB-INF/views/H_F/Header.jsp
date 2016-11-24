<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      <li class="active"><a href="/SachinCakeShop"><label style="color: white"> Home </label></a></li>
      <li><a href="contact_us"><label style="color: white"> Contact Us </label></a></li>
      <li><a href="About_us"><label style="color: white"> About us </label></a></li>
      <li><a href="view_All"><label style="color: white"> View All </label></a></li>
      
      <li><a href="Register"><label style="color: white"> Register </label></a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li>
    <!-- Trigger the modal with a button -->
    <a>
  <button class="btn btn-info btn-xm" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"> </span> log in </button>
  </a>
    </li>
    </ul>
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
       
          <button type="button" class="close btn btn-default" data-dismiss="modal">&times;</button>
        <lable> Log In </lable>
        </div>
        <div class="modal-body">
            <table class="table">
             <tr> <td> <lable for="inputname" class="control-label"> name </lable> </td>
                  <td><input type="text" class="Form-control" id="inputName" placeholder="enter name" required="required" />
          </td>
          </tr>
          <tr>
          <td><label for="pwd">Password:</label></td>
          <td> <input type="password" class="form-control" id="pwd" placeholder="Enter password" required="required" /></td>
        </tr>
        </table>
        </div>
        <div class="modal-footer">
        <table class=table>
        <tr>
        <td> <a href="Register">Register now</a> </td>
         <td> <button type="button" class="btn btn-default" data-dismiss="modal">submit</button></td>
        </tr>
        </table>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
    
    
     </li>
    </ul>
  </div>
</nav>

</Div>
</body>
</HTML>