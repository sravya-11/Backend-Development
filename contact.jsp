<%@ page import="java.sql.*" %>
<%
   String Username=request.getParameter("name");
   String Email=request.getParameter("email");
   String Phone=request.getParameter("phone");
   String Message=request.getParameter("message");
   
try{
   Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");

String qry="insert into contact values(?,?,?,?)";
PreparedStatement pstmt=con.prepareStatement(qry);
pstmt.setString(1,Username);
pstmt.setString(2,Email);
pstmt.setString(3,Phone);
pstmt.setString(4,Message);


int res=pstmt.executeUpdate();
out.println(res+"  row inserted successfully");

}
catch(Exception e){
out.println(e);
}
%>
<a href="display.jsp">Display details</a>