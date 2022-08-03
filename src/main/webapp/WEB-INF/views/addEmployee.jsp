<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.error{
	color: red;
}

</style>
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
					<h2>AddProduct</h2>	
	<form:form modelAttribute="employeeBean" action="insertemployee">
	<div class="form-group">
	Name:<form:input  path="employeeName" class="form-control"/>
	</div>
	
	<form:errors path="employeeName" cssClass="error" ></form:errors>
	<!-- <br> -->
		<div class="form-group">
	Email:<form:input  path="eEmail" class="form-control"/>
		<form:errors path="eEmail" cssClass="error" ></form:errors>
		</div>
	
		<!-- <br> -->
				<div class="form-group">
		
	Age:<form:input  path="employeeAge"  class="form-control"/>
		<form:errors path="employeeAge" cssClass="error"></form:errors>
	</div>
		<!-- <br> -->
				<div class="form-group">
		
	Password:<form:input path="ePassword" class="form-control"/>
		<form:errors path="ePassword" cssClass="error" ></form:errors>
	</div>
<!-- 		<br>
 -->		
 	 <button class="btn btn-primary" type="submit" >Submit</button>

<input type="reset" class="btn btn-danger" value="Reset"/>
	</form:form>
		</div>
	</div>
	</div>
</body>
</html>