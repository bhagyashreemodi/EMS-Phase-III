<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Home</title>
<link rel="stylesheet" href="index.css">
</head>
<body>

<div class="wrapper">
    <div class="top_banner">
      <h1 align="center">Employee Management System</h1>
    </div>
    <div class="navigation" align="left">
      <ul>
        <li><a href="createEmployee.jsp">Add New Employee</a></li>
        <li><a href="controller?action=seeAll">Modify Employee Details</a></li>
        <li><a href="search.jsp">Search Employee</a></li>
        <li><a href="#">Remove Employee</a></li>
        <li><a href="controller?action=getAll">See All Employees</a></li>
      </ul>
    </div>
    <div class="create">
    	<form action="controller?action=create" method="post">
    		<input type="text" name="name" placeholder="Name" required="required"><br><br>
 			<input type="text" name="address" placeholder="Address" required="required"> <br><br>
 			<input type="text" name="phoneNumber" placeholder="Mobile Number" required="required" size="10"><br><br>
 			Date of Birth:<br><br><input type="date" name="birthDate" placeholder="Date Of Birth"><br><br>
 			Date of Joining:<br><br><input type="date" name="joiningDate" placeholder="Date of Joining"><br><br>
 			<select name="dept">
 				<option>select Department</option>
 				<option value="1">1. BarclayCard</option>
				<option value="2">2. PCB</option> 			
 			
 			</select><br><br>
 			<select name="project">
 				<option>select Project</option>
 				<option value="1">1. CWS</option>
				<option value="2">2. Apply</option> 			
 			
 			</select><br><br>
 			<select name="role">
 			<option>select Role</option>
 				<option value="1">1. BA3</option>
				<option value="2">2. BA4</option> 			
 			
 			</select><br><br>	
    		<input type="submit" name="Save">
    	</form>	
    
    
    </div>
</div>