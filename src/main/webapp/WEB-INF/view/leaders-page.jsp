<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "security" uri = "http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: bagai
  Date: 19.10.2022
  Time: 20:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
<head>
    <title>Leaders page</title>
    <link rel = "stylesheet" type = "text/css"
          href = "${pageContext.request.contextPath}/resources/static/css/leaders-page.css">
</head>
<body>
<main>
    <h1>Welcome to leaders(managers) page</h1>
    <div id = "content">
        <p>You can access this page, only if your account's role does have 'MANAGER' role.</p>
        <a href = "${pageContext.request.contextPath}/">Home page</a>
        <form:form id = "logout" action = "${pageContext.request.contextPath}/logout" method = "post">
            <input type = "submit" value = "LOGOUT">
        </form:form>
    </div>
</main>
</body>
</html>
