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
    <li class="current">Guestbook</li>
    <li><a href="Sitemap.html">Site Map</a></li>
    <li><a href="mailto:owners@riadestelle.com?Subject=Riad%20Estelle">Email Us</a></li>
  </ul>
</div>

<div class="content">

<h1>Guestbook</h1>

<% if (request.getParameter("redirect") == null) out.print("<p>Have a look at what " + 
    "guests thought of their stay. Or <a href=\"addreview.jsp\">click here to add your " + 
    "own review to our guestbook.</a></p>");
   else out.print("<p>Thank you for your review!  We hope you enjoyed your stay.</p>"); %>



<sql:setDataSource dataSource="jdbc/riad"/> 
<sql:query var="results" sql="SELECT season, review, date FROM GUESTBOOK ORDER BY date DESC">
</sql:query>
<br />
<table id="review" class="center">
<tr>
  <th>Current Reviews</th>
  <th>Season</th>
  <th>Review Date</th>
</tr>
<c:forEach var="row" items="${results.rows}">
<tr>
<td><c:out value="${row.review}"/></td>
<td><c:out value="${row.season}"/></td>
<td><c:out value="${row.date}"/></td>
</tr>
</c:forEach>
</table>

</div>

<div class="footer">
&#169;2011 Melissa Weaver
</div>

</body>
</html>
