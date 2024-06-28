<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ page import = "com.dao.SpecialistDAOImpl" %>
   <%@ page import = "java.util.*" %>
     <%@ page import = "com.model.Specialist" %>
     <%@ page import = "com.model.Doctor" %>
     <%@ page import = "com.dao.DoctorDao" %>
   
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page isELIgnored = "false" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor List</title>
<%@include file="header.jsp" %>
<style type="text/css">

.paint-card{
box-shadow:0 0 10px 0 rgba(0,0,0,0.3);
}


</style>
</head>



<body>
<%@ include file="navbar.jsp" %>
<div class="container-fluid p3">

<div class="row">

	<div class="col-md-5 offset-md-4">
		<div class="card paint-card">
			<div class="card-body">
				<p class="display-4 text-center">Add Doctor</p>
				<c:if test="${not empty errorMsg}">
					<p class="fs-3 text-center text-danger">${errorMsg}</p>
					<c:remove var="errorMsg" scope="session" />
				</c:if>
				<c:if test="${not empty succMsg}">
					<div class="fs-3 text-center text-success" role="alert">
						${succMsg}</div>
					<c:remove var="succMsg" scope="session" />
				</c:if>
				<form action="../adddoctor" method="post">
					<div class="mb-3">
						<label class="form-Label"> Full Name</label> <input type="text"
							required name="fullname" class="form-control">
					</div>
					<div class="mb-3">
						<label class="form-label">DOB</label> <input type="date" required
							name="dob" class="form-control">
					</div>
					<div class="mb-3">
						<label class="form-label">Qualification</label> <input required
							name="qualification" type="text" class="form-control">
					</div>
					<div class="mb-3">
						<label class="form-Label">Specialist</label> <select
							name="specialist" required class="form-control">
							<option>--select--</option>



							<%
							SpecialistDAOImpl dao = new SpecialistDAOImpl();

							List<Specialist> list = dao.getAllSpecialists();
							for (Specialist s : list) {
							%>
							<option><%=s.getSpecialistName()%></option>
							<%
}
%>




						</select>
					</div>
					<div class="mb-3">
						<label class="form-label">Email</label> <input type="text"
							required name="email" class="form-control">
					</div>
					<div class="mb-3">
						<label class="form-Label"> Mob No</label> <input type="text"
							required name="mobno" class="form-control">
					</div>


					<div class="mb-3">
						<label class="form-Label">Password</label> <input required
							name="password" type="password" class="form-control">
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
		</div>
		
		
	</div>

	






</div>



</div>

















</body>
</html>