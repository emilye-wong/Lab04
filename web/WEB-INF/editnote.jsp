<%-- 
    Document   : editnote
    Created on : Jun 5, 2021, 5:05:15 PM
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
        <h2>Edit Note</h2>
        <form method="post" action="note">
            <label>Title: </label>
            <input type="text" name="title" value="${note.title}"><br>
            <label> Contents: </label>
            <textarea type="text" name="content" rows="8" cols="28">${note.content}</textarea><br>
            <input type="submit" value="Save">
        </form>
    </body>
</html>
