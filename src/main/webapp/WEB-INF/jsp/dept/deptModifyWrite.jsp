<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서상세</title>
</head>
<style>
	table {
	width : 400px;
	border-collapse:collapse;
	}
th,td{
	border:1px solid #cccccc;
	padding:5px;
	}
</style>
<body>
<form name="frm" method="post" action="deptModifySave.do">
<table>
	<tr>
		<th>부서번호</th>
		<td><input type="hidden" name="deptNo" value="${deptVO.deptNo}">${deptVO.deptNo}</td>
	</tr>
	<tr>
		<th>부서이름</th>
		<td><input type="text" name="deptName" value="${deptVO.deptName}"></td>
	</tr>
	<tr>
		<th>부서위치</th>
		<td><input type="text" name="loc" value="${deptVO.loc}"></td>
	</tr>
	<tr>
		<th colspan="2">
		<button type="submit">저장</button>
		</th>
	</tr>
</table>
</form>
</body>
</html>