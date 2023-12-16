<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <style>
    body {
      font-family: 'Roboto', sans-serif;
      background-color: #f7f7f7;
      margin: 0;
      padding: 0;
      color: #333;
    }

    h1 {
      color: #2c3e50;
      text-align: center;
      padding: 20px;
      background-color: #ecf0f1;
      margin: 0;
    }

    table {
      width: 90%;
      border-collapse: collapse;
      margin: 20px auto;
      background-color: #fff;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
      border-radius: 8px;
      overflow: hidden;
    }

    th, td {
      padding: 15px;
      text-align: left;
      border-bottom: 1px solid #ecf0f1;
    }

    th {
      background-color: #3498db;
      color: #fff;
      font-weight: 700;
    }

    tr:hover {
      background-color: #f2f2f2;
    }

    a {
      text-decoration: none;
      color: #3498db;
      transition: color 0.3s ease;
    }

    a:hover {
      color: #2980b9;
    }

    .add-link {
      display: inline-block;
      margin: 20px;
      width:100px;
      padding: 15px 25px;
      background-color: #2ecc71;
      color: #fff;
      text-align: center;
      text-decoration: none;
      border-radius: 5px;
      transition: background-color 0.3s ease;
    }

    .add-link:hover {
      background-color: #27ae60;
    }
  </style>
</head>
<body>
<h1>Restaurant List</h1>
<table id="list">
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Rating</th>
    <th>Price</th>
    <th>Type</th>
    <th>Phone</th>
    <th>Time</th>
    <th>Additional Info</th>
    <th>Edit</th>
    <th>Delete</th>
  </tr>

  <c:forEach items="${list}" var="restaurant">
    <tr>
      <td>${restaurant.seq}</td>
      <td>${restaurant.name}</td>
      <td>${restaurant.rating}</td>
      <td>${restaurant.price}</td>
      <td>${restaurant.type}</td>
      <td>${restaurant.phone}</td>
      <td>${restaurant.time}</td>
      <td>${restaurant.etc}</td>
      <td><a href="editform/${restaurant.seq}">Edit</a></td>
      <td><a href="deleteok/${restaurant.seq}" onclick="return confirm('Are you sure you want to delete this restaurant?')">Delete</a></td>
    </tr>
  </c:forEach>
</table>
<a href="add" class="add-link">Add New</a>
<a href="editform/${restaurant.seq}" class="add-link">Edit</a>
</body>
</html>