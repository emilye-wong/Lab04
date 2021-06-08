<%-- 
    Document   : viewnote
    Created on : Jun 5, 2021, 5:04:58 PM
    Author     : emily
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Note Keeper</title>
    </head>
    <body>
        <h1>Simple Note Keeper</h1>
        <h2>View Note</h2>
        <label><strong>Title: </strong>${note.title}</label>
        <br><br>
        <label><strong> Contents: </strong></label>
        <div>${note.content}</div>
        <br>
        <a href="note?edit">Edit</a>
    </body>
</html>
