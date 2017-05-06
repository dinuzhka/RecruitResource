<%-- 
    Document   : index
    Created on : May 5, 2017, 4:54:47 AM
    Author     : Deshika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index-Login</title>
    </head>
    <body>
        <h1>Hello World jsp!</h1>
        <s:form action="LoginAction" method="post">
            Email : <s:textfield name="email" id="email" />
            <br/>
            Password : <s:password  name="password" id="password"/>
            <br/>
            <s:submit method="execute" value="Login"/>
        </s:form>
        <s:actionerror/>
    </body>
</html>
