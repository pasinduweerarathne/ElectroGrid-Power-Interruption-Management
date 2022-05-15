<%@page import="com.PowerInterruptionManagement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<script src="Components/UserManagment.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Power Interruption Management</h1>

				<form id="formPowerInterruptionManagement" name="formPowerInterruptionManagement" method="post" action="formPowerInterruptionManagement.jsp">


					ID: <input id="id" name="id" type="text"
						class="form-control form-control-sm"> 
						
						<br>DATE: <input id="date" name="date" type="text"
						class="form-control form-control-sm"> 
						
						<br> lOCATION: <input id="location" name="location" type="text"
						class="form-control form-control-sm"> 
						
						<br> DESCRIPTION: <input id="description" name="description" type="text"
						class="form-control form-control-sm">
						
						<br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidProjectIDSave" name="hidProjectIDSave" value="">
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>

				<br>
				<div id="divProjectGrid">
					<%
						PowerInterruptionManagement projectObj = new PowerInterruptionManagement();
									out.print(projectObj.readProject());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
