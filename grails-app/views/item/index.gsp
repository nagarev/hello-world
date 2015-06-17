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
    <g:javascript library="jquery" />
    <title>Product List</title>
</head>

<body>
    <h1 class="page_topic">Product List <div id="div_error_message" class="div_error_message"></div></h1>
    <div class="div_search">
        <g:formRemote
                name="searchForm"
                url="[controller: 'item', action: 'search']"
                update="[success: 'div_table', failure: 'div_error_message']"
                on404="alert('Search Error!')">
            Search / Filter: <input name="searchTherms" value="${searchTherms}" type="text" />
            <input name="search" value="Go!" type="submit" />
        </g:formRemote >
    </div>
    <div id="div_table" class="div_table">
        <g:if test="${error == false}">
            <table>
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Price</th>
                    <th>Sold</th>
                </tr>
                <g:each in="${list}" var="item">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.title}</td>
                        <td class="price_row">${item.price}</td>
                        <td>${item.sold_quantity} / ${item.available_quantity}</td>
                    </tr>
                </g:each>
            </table>
        </g:if>
        <g:else>
            Se ha producido un error.
        </g:else>
    </div>
</body>
</html>