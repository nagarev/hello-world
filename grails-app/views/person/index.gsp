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
    <table>
        <tr>
            <td>Name</td>
            <td>Age</td>
        </tr>
        <g:each in="${list}" var="person">
            <tr>
                <td>${person.lastName}, ${person.firstName}</td>
                <td>${person.age}</td>
            </tr>
        </g:each>
    </table>
</body>
</html>