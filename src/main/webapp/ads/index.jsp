<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: samuelmartinez
  Date: 7/18/22
  Time: 3:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Ads</title>
</head>
<body>
<h1>Here are the Ads</h1>

<c:forEach var="ad" items="${ads}">
    <div class="ad">
        <h2>$${ad.title}</h2>
        <p>description: ${ad.description}</p>
    </div>
</c:forEach>

</body>
</html>
