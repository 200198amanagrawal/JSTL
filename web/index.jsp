<%-- 
    Document   : index
    Created on : 24-Apr-2022, 2:07:59 am
    Author     : amanagrawal
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- out tag from jstl -->
        <!-- set tag -->
        <c:set var="i" value="23" scope="application"></c:set><!-- scope are of 
            4 types page,session and application; page is for that particular 
            page session for whole session application is whole app basis  -->
        <c:out value="${i}"></c:out>
        <h3>Loop in JSTL</h3>
        <c:forEach var="j" begin="1" end="10">
            <c:out value="${j}"></c:out><br>
        </c:forEach>
            <!-- value in param tag will be added in the search of google 
            and myUrl will be used as a value to redirect jsp to a new page-->
        <c:url var="myUrl" value="https://www.google.com/search">
            <c:param name="q" value="java tutorial"></c:param>
        </c:url>
            
        <c:redirect url="${myUrl}"></c:redirect>
    </body>
</html>
