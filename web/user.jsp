<%-- 
    Document   : user
    Created on : 25-Apr-2022, 12:56:29 am
    Author     : amanagrawal
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <!-- adding driver just as similar to what we do for jdbc connection in java -->
        <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mySQL://localhost:3306/student_manage" user="root" password="@Indian200198" var="ds"></sql:setDataSource>
        <sql:query dataSource="${ds}" var="rs">select * from student;</sql:query> 
        <table>
            <tr>
                <td>ID</td>
                <td>Name</td>
                <td>Phone</td>
                <td>City</td>
            </tr>
        <c:forEach items="${rs.rows}" var="row">
            <tr>
                <td><c:out value="${row.sid}"></c:out></td>
                <td><c:out value="${row.sname}"></c:out></td>
                <td><c:out value="${row.sphone}"></c:out></td>
                <td><c:out value="${row.scity}"></c:out></td>
            </tr>
            
        </c:forEach>
        </table>
    </body>
</html>
