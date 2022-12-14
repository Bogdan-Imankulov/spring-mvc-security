<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "security" uri = "http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: bagai
  Date: 25.09.2022
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
<head>
    <title>Home page</title>
    <link rel = "stylesheet" type = "text/css"
          href = "${pageContext.request.contextPath}/resources/static/css/home-page.css">
</head>
<body>
<h1 style = "font-size: 30px; color: #cc009e">welcome to home page</h1>
<form:form action = "${pageContext.request.contextPath}/logout" method = "post">
    <input type = "submit" value = "LOGOUT">
</form:form>
<p>
    User:
    <security:authentication property = "principal.username" /> <br />
    Role:
    <security:authentication property = "principal.authorities" />
</p>
<security:authorize access = "hasRole('MANAGER')">
    <p>
        <a href = "${pageContext.request.contextPath}/leaders/leaders-page">Leaders page</a>
    </p>
</security:authorize>
<security:authorize access = "hasRole('ADMIN')">
    <p>
        <a href = "${pageContext.request.contextPath}/admins/admins-page">Admins page</a>
    </p>
</security:authorize>
</body>
</html>
