<HTML>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<Div class="continer">
 <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Sachin Cake..</a>
    </div>
    <ul  class="nav navbar-nav">
      <li class="active"><a href="SachinCakeShop">Home</a></li>
      <li><a href="contact_us">Contact US</a></li>
      <li><a href="About_us">About Us</a></li>
      <li>
       <a class="dropdown-toggle" data-toggle="dropdown" href="#">
       Category <span class="caret"></span></a>
       <ul class="dropdown-menu" role="menu">
        <li><a href="#">1</a> </li>
        <li><a href="#">2</a> </li>
        <li><a href="#">3</a> </li>
        <li><a href="#">4</a> </li>
        </ul>
      </li>
      <li><a href="Register">Register</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li> <a href="#"> <span class="glyphicon glyphicon-search"> </span> search</a> </li>
    <li>
    <!-- Trigger the modal with a button -->
    <a>
  <button   class="btn btn-info btn-xm" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"> </span> log in </button>
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
            <table class="table"> <tr><td>
          <lable for="inputname" class="control-label">name</lable></td>
          <td><input type="text" class="Form-control" id="inputName" placeholder="enter name" required="required">
          </td>
          </tr>
          <tr>
          <td><label for="pwd">Password:</label></td>
          <td> <input type="password" class="form-control" id="pwd" placeholder="Enter password"></td>
        </tr>
        </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">submit</button>
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
</HTML>