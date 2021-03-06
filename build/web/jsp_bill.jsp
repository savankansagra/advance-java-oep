
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
        <c:set var="total" value="${0}" />
    <sql:query var="listUsers"   dataSource="${dataSource}">
        SELECT * FROM resto WHERE Table_No=${param.tno};
    </sql:query>
     
    <div align="center">
        <table border="1" cellpadding="5">
            <tr>
                <td colspan="3">
                    <h4>Table No:${param.tno}</h4>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <h4>Name:${param.name}</h4>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <h4>Email:${param.email}</h4>
                </td>
            </tr>
            <c:forEach var="user" items="${listUsers.rows}">
                <tr>
                        <td>
                            <center><h5>ITEMS</h5></center>
                        </td>
                        <td >
                            <center><h5>QUANTITY</h5></center>
                        </td>
                        <td>
                            <center><h5>TOTAL</h5></center>
                        </td>
                </tr>
                <tr>
                    <c:if test="${user.Bread > 0}">
                        <td >
                            Bread
                        </td>
                        <td >
                            <c:out value="${user.Bread}" />
                        </td>
                        <td>
                            <c:out value="${user.Bread * 5}" /> 
                            <c:set var="total" value="${total + (user.Bread * 5)}" />
                        </td>
                    </c:if>
                </tr>
                <tr>
                    <c:if test="${user.Chapati > 0}">
                        <td >
                            Chapati
                        </td>
                        <td >
                            <c:out value="${user.Chapati}" />
                        </td>
                        <td>
                            <c:out value="${user.Chapati * 8}" /> 
                            <c:set var="total" value="${total + (user.Chapati * 8)}" />
                        </td>
                    </c:if>
                </tr>
                <tr>
                    <c:if test="${user.Butter_Chapati > 0}">
                        <td >
                            Butter Chapati
                        </td>
                        <td >
                            <c:out value="${user.Butter_Chapati}" />
                        </td>
                        <td>
                            <c:out value="${user.Butter_Chapati * 12}" /> 
                            <c:set var="total" value="${total + (user.Butter_Chapati * 12)}" />
                        </td>
                    </c:if>
                </tr>
                <tr>
                    <c:if test="${user.Tandoori_Roti > 0}">
                        <td>
                            Tandoori Roti
                        </td>
                        <td >
                            <c:out value="${user.Tandoori_Roti}" />
                        </td>
                        <td>
                            <c:out value="${user.Tandoori_Roti * 18}" /> 
                            <c:set var="total" value="${total + (user.Tandoori_Roti * 18)}" />
                        </td>
                    </c:if>
                </tr>
                <tr>
                    <c:if test="${user.Cheese_Butter_Masala > 0}">
                        <td >
                            Cheese Butter Masala
                        </td>
                        <td >
                            <c:out value="${user.Cheese_Butter_Masala}" />
                        </td>
                        <td>
                            <c:out value="${user.Cheese_Butter_Masala * 130}" /> 
                            <c:set var="total" value="${total + (user.Cheese_Butter_Masala * 130)}" />
                        </td>
                    </c:if>
                </tr>
                <tr>
                    <c:if test="${user.Panner_Rajwadi > 0}">
                        <td >
                            Panner Rajwadi
                        </td>
                        <td >
                            <c:out value="${user.Panner_Rajwadi}" />
                        </td>
                        <td>
                            <c:out value="${user.Panner_Rajwadi * 150}" /> 
                            <c:set var="total" value="${total + (user.Panner_Rajwadi * 15)}" />
                        </td>
                    </c:if>
                </tr>
                <tr>
                    <c:if test="${user.Veg_Handi > 0}">
                        <td >
                            Veg Handi
                        </td>
                        <td >
                            <c:out value="${user.Veg_Handi}" />
                        </td>
                        <td>
                            <c:out value="${user.Veg_Handi * 135}" /> 
                            <c:set var="total" value="${total + (user.Veg_Handi * 135)}" />
                        </td>
                    </c:if>
                </tr>
                <tr>
                    <c:if test="${user.Bhindi_Masala > 0}">
                        <td >
                            Bhindi Masala
                        </td>
                        <td >
                            <c:out value="${user.Bhindi_Masala}" />
                        </td>
                        <td>
                            <c:out value="${user.Bhindi_Masala * 90}" /> 
                            <c:set var="total" value="${total + (user.Bhindi_Masala * 90)}" />
                        </td>
                    </c:if>
                </tr>
                <tr>
                    <c:if test="${user.Paneer_Kadai > 0}">
                        <td >
                            Paneer Kadai
                        </td>
                        <td >
                            <c:out value="${user.Paneer_Kadai}" />
                        </td>
                        <td>
                            <c:out value="${user.Paneer_Kadai * 150}" /> 
                            <c:set var="total" value="${total + (user.Paneer_Kadai * 150)}" />
                        </td>
                    </c:if>
                </tr>
                <tr>
                    <c:if test="${user.Kaju_Paneer > 0}">
                        <td >
                            Kaju Paneer
                        </td>
                        <td >
                            <c:out value="${user.Kaju_Paneer}" />
                        </td>
                        <td>
                            <c:out value="${user.Kaju_Paneer * 110}" /> 
                            <c:set var="total" value="${total + (user.Kaju_Paneer * 110)}" />
                        </td>
                    </c:if>
                </tr>
                <tr>
                    <c:if test="${user.Butter_Milk > 0}">
                        <td >
                            Butter Milk
                        </td>
                        <td >
                            <c:out value="${user.Butter_Milk}" />
                        </td>
                        <td>
                            <c:out value="${user.Butter_Milk * 20}" /> 
                            <c:set var="total" value="${total + (user.Butter_Milk * 20)}" />
                        </td>
                    </c:if>
                </tr>
                <tr>
                    <c:if test="${user.Coca_Cola > 0}">
                        <td >
                            Coca Cola
                        </td>
                        <td >
                            <c:out value="${user.Coca_Cola}" />
                        </td>
                        <td>
                            <c:out value="${user.Coca_Cola * 20}" /> 
                            <c:set var="total" value="${total + (user.Coca_Cola * 20)}" />
                        </td>
                    </c:if>
                </tr>
                <tr>
                    <c:if test="${user.Sprite > 0}">
                        <td >
                            Sprite
                        </td>
                        <td >
                            <c:out value="${user.Sprite}" />
                        </td>
                        <td>
                            <c:out value="${user.Sprite * 20}" /> 
                            <c:set var="total" value="${total + (user.Sprite * 20)}" />
                        </td>
                    </c:if>
                </tr>
                <tr>
                    <c:if test="${user.Pepsi > 0}">
                        <td >
                            Pepsi
                        </td>
                        <td >
                            <c:out value="${user.Pepsi}" />
                        </td>
                        <td>
                            <c:out value="${user.Pepsi * 20}" /> 
                            <c:set var="total" value="${total + (user.Pepsi * 20)}" />
                        </td>
                    </c:if>
                </tr>
                <tr>
                    <c:if test="${user.Mazza > 0}">
                        <td >
                            Mazza
                        </td>
                        <td >
                            <c:out value="${user.Mazza}" />
                        </td>
                        <td>
                            <c:out value="${user.Mazza * 20}" /> 
                            <c:set var="total" value="${total + (user.Mazza * 20)}" />
                        </td>
                    </c:if>
                </tr>
                <tr>
                    <td colspan="3">
                <center>
                    Grand Total:<c:out value="${total}" />
                </center>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                <center>
                    Visit Again!!!
                </center>
                    </td>
                </tr>                      
            </tr>
            </c:forEach>
        </table>
    </div>
            <sql:update dataSource="${dataSource}" var="listUsers">
                DELETE FROM resto WHERE Table_No=${param.tno};
            </sql:update>
        
        
    </body>
</html>
