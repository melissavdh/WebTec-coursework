<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">

<head>
<link href="Pages.css" rel="stylesheet" type="text/css" />
<script src="validate.js" type="text/javascript"></script>
<title>Riad Estelle</title>
</head>
<body>

<%@ page import="com.melissa.bookings.*" %>
<%@ taglib uri="http://java.sun.com/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<div class="header">
  <ul class="nav">
    <li><a href="index.html">Home</a></li>
    <li><a href="Rooms.html">Rooms</a></li>
    <li><a href="Prices.html">Prices</a></li>
    <li><a href="Marrakech.html">Marrakech</a></li>
    <li><a href="Guestbook.jsp">Guestbook</a></li>
    <li><a href="Sitemap.html">Site Map</a></li>
    <li><a href="mailto:owners@riadestelle.com?Subject=Riad%20Estelle">Email Us</a></li>
  </ul>
</div>

<div class="content">

<h1>Admin</h1>

<p>User's reviews currently in database:</p>
<sql:setDataSource dataSource="jdbc/riad"/> 
<sql:query var="results" sql="SELECT * FROM GUESTBOOK ORDER BY date DESC">
</sql:query>
<br />
<!--<form>-->
<table id="review" class="center">
<tr>
  <th>Current Reviews</th>
  <th>Season</th>
  <th>Review Date</th>
  <th>Guest's Name</th>
  <th>Guest's Email</th>
<!--  <th>Delete?</th>-->
</tr>
<c:forEach var="row" items="${results.rows}">
<tr>
<td><c:out value="${row.review}"/></td>
<td><c:out value="${row.season}"/></td>
<td><c:out value="${row.date}"/></td>
<td><c:out value="${row.name}"/></td>
<td><c:out value="${row.email}"/></td>
<input type="hidden" name="comment" value="${row.review}" />
<input type="hidden" name="date" value="${row.season}" />
<input type="hidden" name="entry_date" value="${row.date}" />
<input type="hidden" name="name" value="${row.name}" />
<input type="hidden" name="mail" value="${row.email}" />
<!--
<td><input type="button" onclick="deleteRow(request.getParameter('name'),request.getParameter('date'),request.getParameter('mail'),request.getParameter('comment'),request.getParameter('entry_date'),)" value="Delete" /></td>
-->
</tr>
</c:forEach>
</table>
<!--</form>-->
<br />
<br />
</div>

<div class="footer">
&#169;2011 Melissa Weaver
</div>

</body>
</html>
