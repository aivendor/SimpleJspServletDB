<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Show All Users</title>
</head>
<body>
	<table border=1>
		<thead>
			<tr>
				<th>User Id</th>
				<th>Name</th>
				<th>Gender</th>
				<th>Depart</th>
				<th>Score</th>
				<th>Rank</th>
				<th colspan=2>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${users}" var="user">
				<tr>
					<td><c:out value="${user.id}" /></td>
					<td><c:out value="${user.name}" /></td>
					<td><c:out value="${user.gender}" /></td>
					<td><c:out value="${user.depart}" /></td>
					<td><c:out value="${user.score}" /></td>
					<td><c:out value="${user.rank}" /></td>
					<td><a
						href="UserController?action=edit&userId=<c:out value="${user.id}"/>">Update</a></td>
					<td><a
						href="UserController?action=delete&userId=<c:out value="${user.id}"/>">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<p>
		<a href="UserController?action=insert">Add User</a>
	</p>
</body>
</html>