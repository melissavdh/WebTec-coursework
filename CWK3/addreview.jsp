<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">

<head>
<link href="Pages.css" rel="stylesheet" type="text/css" />
<script src="validate.js" type="text/javascript"></script>
<script src="resetForm.js" type="text/javascript"></script>
<title>Riad Estelle</title>
</head>
<body onload="resetForm()" onunload="resetForm()">

<%@ page import="com.melissa.bookings.*" %>

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

<h1>Add a Review</h1>

<p>Just enter your review below and we will add it to our guestbook.  We promise 
to keep your name and email address confidential; this information is merely for 
our records in case we need to contect you in future.</p>

<form id="entry" onsubmit="return validateForm()" method="post" >
<p>
Name:<br />
<input type="text" name="name" value="your name"/><br />
Dates of stay:<br />
<input type="text" name="date" value="the season"/><br />
E-mail:<br />
<input type="text" name="mail" value="your email"/><br />
Comment:<br />
<textarea name="comment" rows="5" cols="40">your review</textarea>
<br /><br />
<input type="submit" value="Send"/>
<input type="reset" value="Reset"/>
</p>
</form>

<% String name = request.getParameter("name"); %>
<% String date = request.getParameter("date"); %>
<% String mail = request.getParameter("mail"); %>
<% String comment = request.getParameter("comment"); %>
<% Guestbook guestbook = new Guestbook(); %>
<% guestbook.setName(name); %>
<% guestbook.setDate(date); %>
<% guestbook.setMail(mail); %>
<% guestbook.setComment(comment); %>
<% if ( (name != null) && (date != null) && (mail != null) && (comment != null) ) {
    guestbook.newEntry();
    response.sendRedirect("Guestbook.jsp?redirect=true");
 } %>

</div>

<div class="footer">
&#169;2011 Melissa Weaver
</div>

</body>
</html>
