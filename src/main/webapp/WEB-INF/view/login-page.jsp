<%--
  Created by IntelliJ IDEA.
  User: bagai
  Date: 02.10.2022
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html; ISO-8859-1;charset=UTF-8" language = "java" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login-page.css">
</head>
<body>
<h3>Login page</h3>
<form:form action = "${pageContext.request.contextPath}/login-processing-page"
           method = "post">
    <c:if test="${param.error != null}">
        <p id="err-msg">You entered invalid username or password! Please try again</p>
    </c:if>
    <p>
        Username: <label>
        <input type = "text" name = "username">
    </label>
    </p>
    <p>
        Password: <label>
        <input type = "password" name = "password">
    </label>
    </p>
    <input type = "submit" value = "login">
</form:form>
</body>
</html>
