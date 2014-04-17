<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>Testing</title></head>
<body>
<p>Testing Java: <% out.print("OK"); %>.</p>

<%@ page import="javax.naming.*,java.sql.*,javax.sql.*" %>
<%
Context i = new InitialContext();
Context e = (Context) i.lookup("java:/comp/env");
DataSource d = (DataSource) e.lookup("jdbc/riad");
Connection con = d.getConnection();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select name from rooms");
%>

<table>
<% while (rs.next()) {
  String fn = rs.getString("name");
%>
<tr><td><%=fn%></td><td><%=fn%></td></tr>
<% } %>
</table>

<% st.close(); con.close(); %>

<%@ taglib uri="http://java.sun.com/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<sql:setDataSource dataSource="jdbc/riad"/> 
<sql:query var="results" sql="SELECT season, review FROM GUESTBOOK">
</sql:query>
<table border="1" align="center" valign="center">
<c:forEach var="row" items="${results.rows}">
<tr>
<td><c:out value="${row.name}"/></td>
</tr>
</c:forEach>
</table>

</body>
</html>
