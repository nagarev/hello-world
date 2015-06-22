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
    <title>Welcome!</title>
    <link rel="stylesheet" href="${resource(dir: 'css/item', file: 'item.css')}" type="text/css">
</head>

<body>
    <h1 class="page_topic">Welcome! <div id="div_error_message" class="div_error_message"></div></h1>
    <div id="div_table" class="div_box div_left">
        <p><b>Greetings from Grails!</b></p>
        <br />
        <p>This is a small application to introduce myself to the fantastic world of Groovy &amp; Grails</p>
        <br />
        <p>
            You're welcome to clone the <a href="https://github.com/nagarev/hello-world">repo at github</a> and use it
            at your own risk!
        </p>
        <br />
        <p>I hope you're going to enjoy it!</p>
    </div>
    <div class="div_box div_right">
        <p><b>Contents</b></p>
        <br />
        <p><a href="/helloworld/item/">Items</a></p>
        <p><a href="/helloworld/person/">Persons</a></p>
    </div>
</body>
</html>