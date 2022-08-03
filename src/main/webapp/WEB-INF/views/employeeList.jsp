<%@page import="com.bean.EmployeeBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
	<link rel="stylesheet"  
	href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
</head>
<body>

<h2>Welcome ${employeeBean.employeeName }<h2>
<div class="container-fluid">
<div class="row">
	<div class="col-md-3"></div>
	<div class="col-md-6">
<table id="list" class="hover" style="width:100%">
		<thead>
			<tr>
			<th>UserId</th>
			<th>Name</th>
			<th>Email</th>
			<th>Age</th>
			<th>Action</th>
		</tr>
		</thead>
				<tbody>

<c:forEach var = "lists" items= "${list}">

 	<tr>
	<td>${lists.eId }</td>
	<td>${lists.employeeName }</td>
	<td>${lists.eEmail}</td>
	<td>${lists.employeeAge}</td>
	<td><a href="./deleteemployee/${lists.eId }" class="link-secondary">Delete</a>
	<a href="./editemployee/${lists.eId }" class="link-secondary">Update</a></td>
	</tr>
	</c:forEach>
		
	</tbody>
	</table>
		</div>
   </div>
</div>
	<script type="text/javascript" 
	src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript" 
	src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function () {
	    $('#list').DataTable();
	});</script>
 <%-- <h2>Welcome ${employeeBean.employeeName }</h2>
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
</table> --%>
</body>
</html>