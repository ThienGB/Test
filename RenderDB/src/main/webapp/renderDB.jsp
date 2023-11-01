<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="util.example" %>
<%@ page import = "java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
<body>
<h2>HTML Table</h2>

<%
	ResultSet rs = example.getStudentrs();
	//out.println(rs.getInt(1));
	out.println("<table border='1' cellpadding='2' cellspacing='0' width='100%'>");
	out.println("<th>ID</th><th>Student</th><th>Student Name</th><th>Class</th>");
	while (rs.next()){
		out.println("<tr><td>" +rs.getInt(1) + "</td><td>" + rs.getString(2)+ "</td><td>" + rs.getString(3)+ "</td><td>" + rs.getInt(4)+ "</td></tr>");
	}
	out.println("</table>");
%>
</body>
</html>