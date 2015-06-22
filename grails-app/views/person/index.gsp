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
    <title><g:message code="my.person.index.title" /></title>
    <link rel="stylesheet" href="${resource(dir: 'css/person', file: 'person.css')}" type="text/css">
</head>

<body>
    <h1 class="page_topic"><g:message code="my.person.index.title" /> <div id="div_error_message" class="div_error_message"></div></h1>
    <div class="div_table">
        <table>
            <tr>
                <th>Name</th>
                <th>Age</th>
            </tr>
            <g:each in="${list}" var="person">
                <tr>
                    <td>${person.lastName}, ${person.firstName}</td>
                    <td>${person.age}</td>
                </tr>
            </g:each>
        </table>
    </div>
</body>
</html>