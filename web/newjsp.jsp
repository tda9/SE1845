<%-- 
    Document   : newjsp
    Created on : Jan 5, 2024, 5:03:22 PM
    Author     : DELL
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:forEach var="a" items="${list}"     >
            <div>${a.FName}</div>
    </c:forEach>
    <c:set var="aNum" value="2345.578"/>
           <fmt:formatNumber value="${aNum}"  pattern="##.#"/>
    
    </body>
</html>
