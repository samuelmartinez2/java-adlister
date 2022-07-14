<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: samuelmartinez
  Date: 7/14/22
  Time: 5:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>


</head>
<%@include file="partials/head.jsp"%>
<body>

<%@include file="partials/nabvar.jsp"%>
    <form action="/login.jsp" method="post">
        <div class="imgcontainer">
            <img src="" alt="Avatar" class="">
        </div>

        <div class="container">
            <label><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="uname" required>
            <label ><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" required>
            <button type="submit">Login</button>
        </div>
    </form>

            <c:if test="${param.uname || param.psw != null}">

            <c:choose>
                <c:when test='${param.uname.equalsIgnoreCase("admin") && param.psw.equalsIgnoreCase("password")}'>
                    <p> username is ${param.uname}</p>
                    <p> password is ${param.psw}</p>
<%--                    <%request.getRequestDispatcher("profile.jsp").forward(request,response);%>--%>
                    <%response.sendRedirect("/profile.jsp");%>

                </c:when>

                <c:otherwise>

                    <%
//                        request.getRequestDispatcher()
                        response.sendRedirect("/hello-world");%>

                </c:otherwise>
            </c:choose>
            </c:if>




<link href="css/style.css" rel="stylesheet" type="text/css">
</body>
</html>
