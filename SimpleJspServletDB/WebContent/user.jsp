<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加新球友</title>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
<link rel="stylesheet" href="css/form.css" type="text/css">
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
</head>
<body>
<div class="container">
<div class="row main">
<div class="main-login main-center">
	<form method="POST" action='UserController' name="frmAddUser">
		<div class="form-group">
			<label for="name" class="cols-sm-2 control-label">User ID</label>
			<input type="text" readonly="readonly" class="form-control"
				name="userid" value="<c:out value="${user.id}" />" />
		</div>
		<div class="form-group">
			<label class="cols-sm-2 control-label">Name</label><input type="text" name="name" placeholder="Enter your Name"
				class="form-control" value="<c:out value="${user.name}"  />" />
		</div>
		<div class="form-group">
		<label class="cols-sm-2 control-label">Gender</label><input type="text" name="gender" class="form-control"
			value="<c:out value="${user.gender}" />" />
			</div>
		<div class="form-group">
		<label class="cols-sm-2 control-label">Department</label>
		<input class="form-control" type="text" name="depart" value="<c:out value="${user.depart}" />" />
		</div>
		<div class="form-group">
		<label class="cols-sm-2 control-label">Score</label>
		<input class="form-control" type="text" name="score"
			value="<c:out value="${user.score}" />" /></div>
		<div class="form-group">	
			<label class="cols-sm-2 control-label">Rank</label>
			<input class="form-control" type="text" name="rank" value="<c:out value="${user.rank}" />" />
			</div>
		<input class="btn btn-primary" type="submit" value="Submit" />
	</form>
	</div>
</div>
	</div>
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>