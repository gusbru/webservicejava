<%--
  Created by IntelliJ IDEA.
  User: gusbru4
  Date: 29/10/18
  Time: 18:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Redirect...</title>
</head>
<body>
    <%
        String nextURL = request.getParameter("url");
        response.sendRedirect(nextURL);
    %>
</body>
</html>
