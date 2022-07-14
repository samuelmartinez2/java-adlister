<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: samuelmartinez
  Date: 7/14/22
  Time: 5:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% String username = request.getParameter("username");
   String password = request.getParameter("password");
%>

<html>
<head>
    <title>Title</title>

<link href="css/style.css" rel="stylesheet" type="text/css">

<body>
    <form action="login.jsp" method="post">
        <div class="imgcontainer">
            <img src="" alt="Avatar" class="">
        </div>

        <div class="container">
            <label><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="uname" required>
            <label ><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" required>
            <button type="submit">Login</button>

            <c:choose>
                <c:when test='${param.username.equalsIgnoreCase("admin")}'>
                    <p> username is ${param.username}</p>
                </c:when>
<%--                <c:when test='${param.password.equalsIgnoreCase("password")}'>--%>
<%--                    <p> password is ${param.password}</p>--%>
<%--                </c:when>--%>
<%--                <p>its not working</p>--%>
<%--                <%response.sendRedirect("/profile.jsp");%>--%>
                <c:otherwise>
<%--                    <%response.sendRedirect("/profile");%>--%>
                </c:otherwise>
            </c:choose>
        </div>
    </form>
</head>


</body>
</html>
