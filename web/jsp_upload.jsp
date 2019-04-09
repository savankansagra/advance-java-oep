<%-- 
    Document   : jsp_upload
    Created on : Apr 9, 2019, 2:40:29 PM
    Author     : KEYUR KHANT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql" %>


<sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3306/oep_ajava" user="root" password="root" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>hello</h3>
        
        <c:if test="${pageContext.request.method=='GET'}">
        <c:catch var="exception">    
        <sql:update dataSource="${dataSource}" var="updatedTable">
        INSERT INTO resto VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        
            
                <sql:param value="${param.tno}" />                
                <sql:param value="${param.b1}" />
                <sql:param value="${param.b2}" />
                <sql:param value="${param.b3}" />
                <sql:param value="${param.b4}" />    
                <sql:param value="${param.v1}" />                
                <sql:param value="${param.v2}" />
                <sql:param value="${param.v3}" />
                <sql:param value="${param.v4}" />
                <sql:param value="${param.v5}" />    
                <sql:param value="${param.v6}" />                
                <sql:param value="${param.d1}" />
                <sql:param value="${param.d2}" />
                <sql:param value="${param.d3}" />
                <sql:param value="${param.d4}" />
                <sql:param value="${param.d5}" />
        </sql:update>
        <c:if test="${updatedTable>=1}">
            <%
                String redirectURL = "index.jsp";
                response.sendRedirect(redirectURL);
            %>
        </c:if>
        </c:catch>
        <c:if test="${exception!=null}">
        <c:out value="Unable to insert data in database." />
        </c:if>
        </c:if>
    </body>
</html>
