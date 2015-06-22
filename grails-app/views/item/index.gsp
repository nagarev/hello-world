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
    <title><g:message code="my.item.index.title" /></title>
    <link rel="stylesheet" href="${resource(dir: 'css/item', file: 'item.css')}" type="text/css">
</head>

<body>
    <h1 class="page_topic"><g:message code="my.item.index.title" /> <div id="div_error_message" class="div_error_message"></div></h1>
    <div class="div_search">
        <g:formRemote
                name="searchForm"
                url="[controller: 'item', action: 'search']"
                update="[success: 'div_table', failure: 'div_error_message']"
                on404="alert('Search Error!')">
            <g:message code="my.item.index.searchAndFilter" />: <input name="searchTherms" value="${searchTherms}" type="text" />
            <input name="search" class="button" value="<g:message code="my.item.index.go" />" type="submit" />
        </g:formRemote >
    </div>
    <div id="div_table" class="div_table">
        <g:render template="/item/itemList" />
    </div>
</body>
</html>