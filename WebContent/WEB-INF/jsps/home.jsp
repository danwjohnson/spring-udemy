<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Insert title here</title>
</head>
<body>
Hi there!

Session: <%= session.getAttribute("name") %> <p/>

Request: <%= request.getAttribute("name") %> <p/>

Request (using EL): ${name} <p/>

<c:out value="${name}"></c:out> <p/>

<sql:query var="rs" dataSource="jdbc/spring">
select id, name, email, text from offers
</sql:query>

<c:forEach var="row" items="${rs.rows}">
  id ${row.id}<br/>
  name ${row.name}<br/>
  email ${row.email}<br/>
  offer ${row.text}<br/>
</c:forEach>

</body>
</html>