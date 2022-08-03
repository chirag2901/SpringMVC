<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

</head>
<body>
<div class="container-fluid"> 
<div class="row">
		<div class="col-md-4"></div>
				<div class="col-md-4">
					<h2>Login</h2>	
<form action="./employeelogin" method="post">
<div class="form-group">
	Email:<input type="text" name="txtEmployeeEmail" class="form-control"/>
	</div>
	<!-- <br> -->
	<div class="form-group">
	Password:<input type="password" name="txtEmployeePassword" class="form-control"/>
	</div>
	<!-- <br> -->
<button class="btn btn-primary" type="submit" >Login</button>

</form>
		</div>
	</div>
</div>
</body>
</html>