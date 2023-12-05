<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
  <meta charset="UTF-8">
  <title>free board</title>
<style>
  #list {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 90%;
  }
  #list td, #list th {
    border: 1px solid #ddd;
    padding: 8px;
    text-align:center;
  }
  #list tr:nth-child(even){background-color: #f2f2f2;}
  #list tr:hover {background-color: #ddd;}
  #list th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: center;
    background-color: #006bb3;
    color: white;
  }
</style>

</head>
<body>
<h1>자유게시판</h1>
<table id = "list" width = "90%">
  <tr>
    <th>ID</th>
    <th>Category</th>
    <th>Title</th>
    <th>Content</th>
    <th>RegDate</th>
    <th> </th>
    <th>Edit</th>
    <th>Delete</th>
  </tr>
  <c:forEach items = "${list}" var = "u">
    <tr>
      <td>${u.seq}</td>
      <td>${u.category}</td>
      <td>${u.title}</td>
      <td>${u.writer}</td>
      <td>${u.content}</td>
      <td>${u.regDate}</td>
      <td><a href="editform/${u.seq}">Edit</a></td>
      <td><a href = "javascript:delete_ok('${u.seq}')">Delete</a></td>
    </tr>
  </c:forEach>
</table>
<br/><button type = "button" onclick="location.href = 'add'">Add New Post</button>
</body>
</html>
<script>
  function delete_ok(seq){
    if(confirm("정말 삭제하시겠습니까?")){
      location.href="deleteok/"+seq;
    }
  }
</script>