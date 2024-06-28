<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<title>UserSignup</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Index Page</title>
<%@include file="header.jsp" %>
  </head>

<body>

    <%@include file="navbar.jsp" %>
    
     <script>
	function myFunction() {
	    var x = document.getElementById("mypassword");
	    if (x.type === "password") {
	        x.type = "text";
	    } else {
	        x.type = "password";
	    }
	}
</script>
    
    <div class="modal modal-signin position-static d-block  py-1" tabindex="-1" role="dialog" id="modalSignin" style="opacity:0.9;background-image:url();background-size: cover;">
    <div class="modal-dialog" role="document">
      <div class="modal-content rounded-4 shadow">
        <div class="modal-header p-5 pb-4 border-bottom-5">
          <!-- <h5 class="modal-title">Modal title</h5> -->
          <h2 class=" display-6 fw-semibold mb-0">User Sign-Up</h2>
        </div>
        
      
  
        <div class="modal-body p-5 pt-0">
          <c:if test="${not empty succMsg3 }">
         <p class="text-center text-success fs-1">${succMsg3}</p>
     <c:remove var="succMsg3" scope="session"/>
       </c:if>
       
       <c:if test="${not empty errorMsg3}">
<p class="text-center text-danger fs-1">${errorMsg3}</p>
<c:remove var="errorMsg3" scope="session"/>
</c:if>
          <form action="../register" method="post">
          
            <div class="form-floating mb-3">
              <input type="text" class="form-control rounded-3" id="name" placeholder="Name" name="fullname" required>
              <label for="name">Name</label>
            </div>
           
             
              
              <div class="form-floating mb-3">
                     <input type="email" name="email"  class="form-control rounded-3" placeholder="xyz@gmail.com" >
                     <label for="add">Email Id</label>
              </div>
               <div class="form-floating mb-3">
              <input type="password" class="form-control rounded-3" name="password" placeholder="****" required id="mypassword">                    
                 <label for="mypassword">Password</label>
              </div>
              <input type="checkbox" onclick="myFunction()">Show Password
          
            <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit" >Submit</button>
            <small class="text-muted">By clicking Submit button, you agree to the terms of use.</small>
            <hr class="my-4">
            
          </form>
        </div>
      </div>
    </div>
  </div>
    
    <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
    </body>
    </html>