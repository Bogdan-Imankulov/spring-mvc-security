<%--
  Created by IntelliJ IDEA.
  User: bagai
  Date: 21.10.2022
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
<head>
    <title>Access Denied</title>
    <link rel = "stylesheet" type = "text/css"
          href = "${pageContext.request.contextPath}/resources/static/css/access-denied-page.css">
</head>
<body>
<h1> We are sorry, you can not access there </h1>
<div id = "content">

    <p id = "err-msg">
        You can not access this page :(
    </p>
    <p id = "instructions">
        To access this page, you need to log in with a specific role
    </p>
</div>
</body>
</html>
