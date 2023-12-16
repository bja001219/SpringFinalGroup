<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
  <meta charset="UTF-8">
  <title>Edit</title>
</head>
<body>
<form:form modelAttribute="u" method="POST" action="../editok">
  <form:hidden path="seq"/>
  <table id="edit">
    <tr><th colspan="2">Edit Restaurant</th></tr>
    <tr><td>Name</td><td><form:input path="name" /></td></tr>
    <tr><td>Rating</td><td><form:input path="rating" /></td></tr>
    <tr><td>Price</td><td><form:input path="price" /></td></tr>
    <tr><td>Type</td><td><form:input path="type" /></td></tr>
    <tr><td>Phone</td><td><form:input path="phone" /></td></tr>
    <tr><td>Time</td><td><form:input path="time" /></td></tr>
    <tr><td>Additional Info</td><td><form:textarea cols="50" rows="5" path="etc" /></td></tr>
  </table>
  <input type="submit" value="Update"/>
  <input type="button" value="Cancel" onclick="history.back()"/>
</form:form>
</body>
</html>
