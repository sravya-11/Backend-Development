<%@ page import="java.sql.*" %>
<%
try{


   Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
   Statement stmt =con.createStatement();
   String qry="select * from contact";
   ResultSet rs=stmt.executeQuery(qry);
%>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<p align="center"><font color="#880E4F" face="Algerian" size="6"><b>User Details</b></font></p>
   <table border="2px" align="center">
		<tr>
			<th>USERNAME</th>
			<th>EMAIL</th>
			<th>PHONE</th>
			<th>MESSAGE</th>
			
		</tr>
<%
	while(rs.next()){
%>
<tr>
		<td><%= rs.getString(1) %></td>
		<td><%= rs.getString(2) %></td>
		<td><%= rs.getString(3) %></td>
		<td><%= rs.getString(4) %></td>
		
</tr>
<% } %>
</table>
<%
	}
	catch(Exception e){
		out.println(e);
		}
%>		