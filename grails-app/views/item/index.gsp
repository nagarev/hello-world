<%--
  Created by IntelliJ IDEA.
  User: nazgarcia
  Date: 16/6/15
  Time: 12:25
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Product List</title>
</head>

<body>
    <h1 class="page_topic">Product List</h1>
    <g:if test="${error == false}">
        <table>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Creation Date</th>
                <th>Base Price</th>
            </tr>
            <g:each in="${list}" var="item">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.title}</td>
                    <td>${item.date_created}</td>
                    <td>${item.base_price}</td>
                </tr>
            </g:each>
        </table>
    </g:if>
    <g:else>
        Se ha producido un error.
    </g:else>
</body>
</html>