<%--
  Created by IntelliJ IDEA.
  User: gusbru4
  Date: 27/10/18
  Time: 18:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="BD.BD" %>
<html>
<head>
    <title>Search</title>
</head>
<body>
    <h1>Search</h1>
    <%
        String name = request.getParameter("inpSearch");
        String password = request.getParameter("inpPasswd");
        String typeRequest = request.getMethod();
    %>
    <h1>Search name using JSP....</h1>

    <%
        if (typeRequest.toUpperCase().equals("POST")) {
    %>
            <h2>Using POST because have sensitive information (Password)</h2>
    <%
        }
    %>


    <%
        if (!name.isEmpty()) {
            BD.NAMESLIST.add(name);
            BD.PASSWDLIST.add(password);
    %>
            <p>Your name is <%=name%></p>
            <p>Your password is <%= password %></p>
            <p>This request used <%=typeRequest%> method</p>
            <p>The current length is <%=BD.NAMESLIST.size()%></p>
            <p>The size is <% out.println(BD.PASSWDLIST.size()); %> </p>

            <h3>The list name is</h3>
            <table>
                <tr>
                    <th>Username</th>
                    <th>Password</th>
                </tr>

                <%
                    for (int i = 0; i < BD.NAMESLIST.size(); i++) {
                %>
                        <tr>
                            <td><%=BD.NAMESLIST.get(i)%></td>
                            <td><%=BD.PASSWDLIST.get(i)%></td>
                        </tr>
                <%
                    }
                %>
            </table>
    <%
        } else {
    %>
            <p>No name</p>
    <%
        }
    %>

    <form action="Redirect.jsp" method="post">
        <input name="url" type="hidden" value="/register.html">
        <input name="btnBack" type="submit" value="Back">
    </form>

</body>
</html>
