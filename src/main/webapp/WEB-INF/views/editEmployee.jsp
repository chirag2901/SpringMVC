<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

</head>
<body>
	<%-- <form action="insertemployee" method="post" >
	Name:<input type="text" name = "name"/>
	Age:<input type="text" name = "age"/>
	<button type="submit">Submit</button>
</form> --%>
<div class="container-fluid"> 
<div class="row">
		<div class="col-md-4"></div>
				<div class="col-md-4">
					<h2>Update</h2>	
	<form:form modelAttribute="employeeBean" action="../updateemployee">
	<form:hidden path="eId" value="${employeeBean.eId }"/>
	<div class="form-group">
	Name:<input type="text" name="employeeName" value="${employeeBean.employeeName }" class="form-control"/>
		</div>
		<!-- <br> -->
		<div class="form-group">
	Email:<input type="email" name="eEmail" value="${employeeBean.eEmail }" class="form-control"/>
		</div>
		<!-- <br> -->
		<div class="form-group">
	Age:<input type="text" name="employeeAge" value="${employeeBean.employeeAge }" class="form-control"/>
		</div>
		<!-- <br> -->
		<div class="form-group">
	Password:<input type="password" name="ePassword" value="${employeeBean.employeeAge }" class="form-control"/>
	</div>
	<!-- 	<br> -->
		 <button class="btn btn-primary" type="submit" >Update</button>


	</form:form>
</body>
</html>