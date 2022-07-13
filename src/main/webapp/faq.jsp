<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: samuelmartinez
  Date: 7/13/22
  Time: 2:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%System.out.println("hello world");%>

<%! String color; %>

<%
    if(request.getParameter("color") != null) {
        color = request.getParameter("color");
//    System.out.println("blue is my favorite too");
}%>

<%
    List<String> trails = new ArrayList<>();
    trails.add("salado Creek");
    trails.add("geology trail");
    trails.add("leon trail");
%>
<% request.setAttribute("trails", trails);%>

<%request.setAttribute("numbers", "1,2,3,4,5");%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%@include file="partials/nabvar.jsp"%>
<h1>Frequently asked questions</h1>

<form action=" /faq.jsp" method="POST">
    <input type="text" id="color" name="color" value="blue">
    <button type="submit"> Submit</button>
</form>
<%--<p>Your favorite color is: <%= color %></p>--%>
    <p>Your favorite color is: ${param.color}</p>  // this works without assigning String color //

<p> ${numbers}</p>

<%--<p> ${trails}</p>--%>
<ul>
    <c:forEach var="trail" items ="${trails}">
        <li>${trail}</li>
    </c:forEach>
</ul>
    <c:if test="${param.color != null}">
    <c:choose>
        <c:when test='${param.color.equalsIgnoreCase("blue")}'>
                <h1>Whoa blue is my favorite color too!</h1>
        </c:when>
    <c:otherwise>
        <h1>But ... ${param.color} is not blue...</h1>
    </c:otherwise>
    </c:choose>
    </c:if>
</body>
</html>