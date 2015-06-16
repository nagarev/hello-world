<%--
  Created by IntelliJ IDEA.
  User: nazgarcia
  Date: 15/6/15
  Time: 14:35
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Welcome to Grails</title>
</head>

<body>
    <g:each in="${(1..10)}" var="number">
        Hi ${number}!</br>
    </g:each>
</body>
</html>