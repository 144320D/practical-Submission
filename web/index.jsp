<%--
  Created by IntelliJ IDEA.
  User: 144320d
  Date: 10/29/2015
  Time: 4:14 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="demo.*" %>
<%@ page import="model.BookDAO" %>
<%@ page import="model.BooksEntity" %>
<%
  BookDAO db = new BookDAO();
  BooksEntity book = db.getBook();
%>
<html>
<head><title>Duke's Bookstore</title></head>
<body bgcolor="#ffffff">
<center>
  <hr>
  <br> &nbsp;<h1><font size="+3" color="#CC0066">Duke's </font> <img src="./duke.books.gif" alt="Duke holding books">
  <font size="+3" color="black">Bookstore</font></h1>
  <br> &nbsp;
  <hr>
</center>
<br> <b>What we are reading</b>
<blockquote><em><a href="bookdetails?bookId=<%= book.getId() %>"><%= book.getTitle() %></a></em> What a cool book.
</blockquote>
<p><a href="bookcatalog"><b>Start Shopping</b></a></p>
</body>
</html>