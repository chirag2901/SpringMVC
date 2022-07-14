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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
</head>
<body>
	<%-- <form action="insertemployee" method="post" >
	Name:<input type="text" name = "name"/>
	Age:<input type="text" name = "age"/>
	<button type="submit">Submit</button>
</form> --%>
	<form:form modelAttribute="employeeBean" action="insertemployee">
	Name:<form:input  path="employeeName" />
	<form:errors path="employeeName" cssClass="error"></form:errors>
		<br>
	Email:<form:input  path="eEmail" />
		<form:errors path="eEmail" cssClass="error"></form:errors>
	
		<br>
	Age:<form:input  path="employeeAge" />
		<form:errors path="employeeAge" cssClass="error"></form:errors>
	
		<br>
	Password:<form:input path="ePassword" />
		<form:errors path="ePassword" cssClass="error"></form:errors>
	
		<br>
		<button type="submit">Submit</button>


	</form:form>
</body>
</html>