<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<title>Add new user</title>
</head>
<body>

	<form method="POST" action='UserController' name="frmAddUser">
		User ID : <input type="text" readonly="readonly" name="userid"
			value="<c:out value="${user.id}" />" /> <br /> Name : <input
			type="text" name="name" value="<c:out value="${user.name}" />" /> <br />
		Gender : <input type="text" name="gender"
			value="<c:out value="${user.gender}" />" /> <br /> Department : <input
			type="text" name="depart" value="<c:out value="${user.depart}" />" />
		<br /> Score : <input type="text" name="score"
			value="<c:out value="${user.score}" />" /> <br /> Rank : <input
			type="text" name="rank" value="<c:out value="${user.rank}" />" /> <br />
		<input type="submit" value="Submit" />
	</form>
</body>
</html>