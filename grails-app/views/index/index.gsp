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
    <title><g:message code="my.index.title" /></title>
    <link rel="stylesheet" href="${resource(dir: 'css/item', file: 'item.css')}" type="text/css">
</head>

<body>
    <h1 class="page_topic"><g:message code="my.index.title" /> <div id="div_error_message" class="div_error_message"></div></h1>
    <div id="div_table" class="div_box div_left">
        <p><b><g:message code="my.index.greeting" /></b></p>
        <br />
        <p><g:message code="my.index.firstParagraph" /></p>
        <br />
        <p>
            <g:message code="my.index.secondParagraph" args="${['<a href="https://github.com/nagarev/hello-world" target="_blank">github</a>']}" encodeAs="None" />
        </p>
        <br />
        <p><g:message code="my.index.thirdParagraph" /></p>
    </div>
    <div class="div_box div_right">
        <p><b><g:message code="my.index.contents.title" /></b></p>
        <br />
        <p><a href="/helloworld/item/">Items</a></p>
        <p><a href="/helloworld/person/">Persons</a></p>
    </div>
</body>
</html>