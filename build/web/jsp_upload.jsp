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
        <c:set var="keyur" value="0" />
        <c:if test="${pageContext.request.method=='GET'}">
        <c:catch var="exception">    
        <sql:update dataSource="${dataSource}" var="updatedTable">
        INSERT INTO resto VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        <c:if test="${param.tno == null}">
            <h1>Please Enter Table Number</h1>
            <jsp:forward page="index.jsp" />
        </c:if>
        <c:if test="${param.tno != null}">
                <sql:param value="${param.tno}" />       
                
                <c:if test="${param.b1 != null}">
                    <sql:param value="${param.b1}" />
                </c:if>
                <c:if test="${param.b1 == null}">
                    <sql:param value="${keyur}" />
                </c:if>
                    
                <c:if test="${param.b2 != null}">
                    <sql:param value="${param.b2}" />
                </c:if>
                <c:if test="${param.b2 == null}">
                    <sql:param value="${keyur}" />
                </c:if>       
                    
                <c:if test="${param.b3 != null}">
                    <sql:param value="${param.b3}" />
                </c:if>
                <c:if test="${param.b3 == null}">
                    <sql:param value="${keyur}" />
                </c:if>                
                    
                <c:if test="${param.b4 != null}">
                    <sql:param value="${param.b4}" />
                </c:if>
                <c:if test="${param.b4 == null}">
                    <sql:param value="${keyur}" />
                </c:if>               
                    
                <c:if test="${param.v1 != null}">
                    <sql:param value="${param.v1}" />
                </c:if>
                <c:if test="${param.v1 == null}">
                    <sql:param value="${keyur}" />
                </c:if>                
                    
                <c:if test="${param.v2 != null}">
                    <sql:param value="${param.v2}" />
                </c:if>
                <c:if test="${param.v2 == null}">
                    <sql:param value="${keyur}" />
                </c:if>                    
                
                <c:if test="${param.v3 != null}">
                    <sql:param value="${param.v3}" />
                </c:if>
                <c:if test="${param.v3 == null}">
                    <sql:param value="${keyur}" />
                </c:if>
                    
                <c:if test="${param.v4 != null}">
                    <sql:param value="${param.v4}" />
                </c:if>
                <c:if test="${param.v4 == null}">
                    <sql:param value="${keyur}" />
                </c:if>
                    
                <c:if test="${param.v5 != null}">
                    <sql:param value="${param.v5}" />
                </c:if>
                <c:if test="${param.v5 == null}">
                    <sql:param value="${keyur}" />
                </c:if>    
                    
                <c:if test="${param.v6 != null}">
                    <sql:param value="${param.v6}" />
                </c:if>
                <c:if test="${param.v6 == null}">
                    <sql:param value="${keyur}" />
                </c:if>    
                    
                <c:if test="${param.d1 != null}">
                    <sql:param value="${param.d1}" />
                </c:if>
                <c:if test="${param.d1 == null}">
                    <sql:param value="${keyur}" />
                </c:if>
                    
                <c:if test="${param.d2 != null}">
                    <sql:param value="${param.d2}" />
                </c:if>
                <c:if test="${param.d2 == null}">
                    <sql:param value="${keyur}" />
                </c:if>    
                    
                <c:if test="${param.d3 != null}">
                    <sql:param value="${param.d3}" />
                </c:if>
                <c:if test="${param.d3 == null}">
                    <sql:param value="${keyur}" />
                </c:if>    
                    
                <c:if test="${param.d4 != null}">
                    <sql:param value="${param.d4}" />
                </c:if>
                <c:if test="${param.d4 == null}">
                    <sql:param value="${keyur}" />
                </c:if>    
                    
                <c:if test="${param.d5 != null}">
                    <sql:param value="${param.d5}" />
                </c:if>
                <c:if test="${param.d5 == null}">
                    <sql:param value="${keyur}" />
                </c:if>    
        </c:if>        
        </sql:update>
        <c:if test="${updatedTable>=1}">
                <jsp:forward page="index.jsp" />
        </c:if>
        </c:catch>
        <c:if test="${exception!=null}">
        <c:out value="Unable to insert data in database." />
        </c:if>
        </c:if>
    </body>
</html>
