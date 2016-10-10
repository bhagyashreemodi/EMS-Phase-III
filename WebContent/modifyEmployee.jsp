<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
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
    <div class="modify">
    	
    	<table>
  <tr>
    <th>Kin ID</th>
    <th>Name</th>
    <th>Address</th>
    <th>Phone number</th>
    <th>Birth date</th>
    <th>joining Date</th>
    <th>Department</th>
    <th>Project</th>
    <th>Role</th>
  </tr>
  <%
  	ArrayList<HashMap<String, String>> employees =  (ArrayList<HashMap<String, String>>)session.getAttribute("employees");
  	for(HashMap<String, String> employee: employees){
  	
  	%>
  	<form action="controller?action=modify" method="post">
  	<tr>
  	
    	<td><input type="submit" name="Save" value=<%=employee.get("kinId") %> style="width:100%"></td>
    	<td><input type="text" name="name" value="<%= employee.get("name") %>"></td>
    	<td><input type="text" name="address" value="<%= employee.get("address") %>"></td>
    	<td><input type="text" name="phoneNumber" value=<%= employee.get("phoneNumber") %>></td>
    	<td><input type="text" name="birthDate" value=<%= employee.get("birthDate") %>></td>
    	<td><input type="text" name="joiningDate" value=<%= employee.get("joiningDate") %>></td>
    	<td><select name="department"><option><%= employee.get("departmentId") %></option><option value=1>1. Barclaycard</option><option value=2>2. PCB</option></select></td>
    	<td><select name="project"><option><%= employee.get("projectId") %></option><option value=1>1. CWS</option><option value=2>2. BAPI</option></select></td>
    	<td><select name="role"><option><%= employee.get("roleId") %></option><option value=1>1. BA3</option><option value=2>2. BA4</option></select></td>
   
  </tr>
  </form>
  <%} %>
</table>

    	
    
    
    </div>
</div>


</body>
</html>