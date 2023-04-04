<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<style>
	table{
		width:300px;
		border:1px solid black;
	}
	
</style>
<meta charset="UTF-8">
<title>board</title>
</head>
<body>

<sql:setDataSource
var="conn"
driver="oracle.jdbc.driver.OracleDriver"
url="jdbc:oracle:thin:@112.220.137.37:1521:xe"
user="yosangso"
password="yosangso" />

<sql:query var="rs" dataSource="${conn}">
	SELECT * FROM TESTBOARD
</sql:query>

<table>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>내용</th>
		<th>작성자</th>
	</tr>
	<c:forEach var="list" items="${rs.rows}">
	<tr>
		<td>${list.BOARD_NO }</td>
		<td>${list.TITLE}</td>
		<td>${list.CONTENT }</td>
		<td>${list.WRITER }</td>
	</tr>
	</c:forEach>
</table>


</body>
</html>