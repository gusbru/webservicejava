<%--
  Created by IntelliJ IDEA.
  User: gusbru4
  Date: 27/10/18
  Time: 17:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Main</title>
  </head>
  <body>
    <h1>Many functionality</h1>
    <ul>
      <li>
        <a href="register.html">Register (Sevlet)</a>
      </li>
      <li>
        <a href="register.html">Search (JSP)</a>
      </li>
      <li>
        <a href="Elements.html">Elements HTML5</a>
      </li>
    </ul>

    <%= application.getInitParameter("logged") %>
  </body>
</html>
