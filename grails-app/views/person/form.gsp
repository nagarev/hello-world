<%--
  Created by IntelliJ IDEA.
  User: nazgarcia
  Date: 15/6/15
  Time: 16:56
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Add User</title>
</head>

<body>
    <g:form controller="person" action="save">
        <label>First Name: </label>
        <g:textField name="firstName" /><br />
        <label>Last Name: </label>
        <g:textField name="lastName" /><br />
        <label>Age: </label>
        <g:textField name="age" /><br />
        <g:actionSubmit value="Save" />
    </g:form>
</body>
</html>