<%-- 
    Document   : viewnote
    Created on : Jun 5, 2021, 5:04:58 PM
    Author     : emily
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Note Keeper</title>
    </head>
    <body>
        <h1>Simple Note Keeper</h1>
        <h2>View Note</h2>
        <form method="post" action="note">
            <label>Title: </label>
            <c:if test="${}">
               
            </c:if>
            <label> Contents: </label>

            <a href="note?edit">Edit</a>
        </form>
    </body>
</html>
