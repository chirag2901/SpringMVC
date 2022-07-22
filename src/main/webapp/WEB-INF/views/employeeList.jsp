<%@page import="com.bean.EmployeeBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%EmployeeBean employeeBean = (EmployeeBean)session.getAttribute("employeeBean");
	String firstName = employeeBean.getEmployeeName();
%>
<h2>Welcome  <%=firstName %></h2>

 <table>
<tr>
<th>Id</th>
<th>Name</th>
<th>Email</th>
<th>Age</th>
<th colspan="2">Action</th>

</tr>

	<c:forEach var = "list" items= "${list}">
	<tr>
	<td>${list.eId }</td>
	<td>${list.employeeName }</td>
	<td>${list.eEmail}</td>
	<td>${list.employeeAge}</td>
	<td><a href="./deleteemployee/${list.eId }">Delete</a>
	<a href="./editemployee/${list.eId }">Update</a></td>
	</tr>
	</c:forEach>
</table>
</body>
</html>