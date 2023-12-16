<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
  <meta charset="UTF-8">
    <title>add new post</title>
</head>
<body>
<form action="addok" method="POST">
  <table id="add">
    <tr><th colspan="2">Add New Restaurant</th></tr>
    <tr><td>Name</td><td><input type="text" name="name"/></td></tr>
    <tr><td>Rating</td><td><input type="text" name="rating"/></td></tr>
    <tr><td>Price</td><td><input type="text" name="price"/></td></tr>
    <tr><td>Type</td><td><input type="text" name="type"/></td></tr>
    <tr><td>Phone</td><td><input type="text" name="phone"/></td></tr>
    <tr><td>Time</td><td><input type="text" name="time"/></td></tr>
    <tr><td>Additional Info</td><td><textarea cols="50" rows="5" name="etc"></textarea></td></tr>
  </table>
  <button type="submit">Register Restaurant</button>
  <button type="button" onclick="location.href='list'">Go to List</button>
</form>
</html>

