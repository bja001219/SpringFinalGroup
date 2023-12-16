<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date"%>
<%Date now = new Date();%>
<html>
<head>
    <title>Hello World!</title>
</head>
<body>
<h1>Hello World!</h1>
<p>The time on the server is <%= now %>.</p>
<p><a href="list">게시판으로 이동</a></p>
</body></html>