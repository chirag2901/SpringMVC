<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	<form:form modelAttribute="employeeBean" action="../updateemployee">
	<form:hidden path="eId" value="${employeeBean.eId }"/>
	Name:<input type="text" name="employeeName" value="${employeeBean.employeeName }"/>
		<br>
	Email:<input type="email" name="eEmail" value="${employeeBean.eEmail }"/>
		<br>
	Age:<input type="text" name="employeeAge" value="${employeeBean.employeeAge }"/>
		<br>
	Password:<input type="password" name="ePassword" value="${employeeBean.employeeAge }"/>
		<br>
		<button type="submit">Submit</button>


	</form:form>
</body>
</html>