<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>View</title>
</head>
<body>

<table>
<c.forEach var = "cont" item = "${contDetails}">

<c:set var = "name" value = "${cont.name}"/>
<c:set var = "email" value = "${cont.email}"/>
<c:set var = "mobile" value = "${cont.mobile}"/>
<c:set var = "msg" value = "${cont.message}"/>
<c:set var = "id" value = "${cont.id}"/>

<tr>
<td>Name : </td>
<td>${cont.name}</td>
</tr>

<tr>
<td>Email : </td>
<td>${cont.email}</td>
</tr>

<tr>
<td>Phone Number : </td>
<td>${cont.mobile}</td>
</tr>

<tr>
<td>Message : </td>
<td>${cont.message}</td>
</tr>

<tr>
<td></td>
<td>${cont.id}</td>
</tr>

</c.forEach>
</table> 

<c:url value = "update.jsp" var = "update">
<c:param name = "name" value = "${name}"></c:param>
<c:param name = "email" value = "${email}"></c:param>
<c:param name = "mobile" value = "${mobile}"></c:param>
<c:param name = "message" value = "${msg}"></c:param>
<c:param name = "id" value = "${id}"></c:param>
</c:url>

<a href = "${update}">
<input type = "button" name = "update" value = "Update">
 </a>
   
</body>
</html>
