<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<title>微创乒乓社团，(づ￣ 3￣)づ</title>
</head>
<body>

 <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
      <a class="navbar-brand" href="#">导航栏</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#">Disabled</a>
          </li>
        </ul>
        
        <form class="form-inline mt-2 mt-md-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>
    <div class="container">
      <div class="jumbotron">
        <h2>挑战规则</h2>
        <p class="lead">微创乒乓球社团</p>
        <a class="btn btn-lg btn-primary" href="" role="button">嘻嘻，还没做好 &raquo;</a>
      </div>
      <h2>女生排名</h2>
      <div class="table-responsive">
	<table class="table table-striped">
		<thead>
			<tr>
				<th>用户编号</th>
				<th>姓名</th>
				<th>性别</th>
				<th>部门</th>
				<th>积分</th>
				<th>排名</th>
				<th colspan=2>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${users}" var="user">
			  <c:choose>
			    <c:when test = "${user.gender == '女'}">
				<tr>
					<td><c:out value="${user.id}" /></td>
					<td><c:out value="${user.name}" /></td>
					<td><c:out value="${user.gender}" /></td>
					<td><c:out value="${user.depart}" /></td>
					<td><c:out value="${user.score}" /></td>
					<td><c:out value="${user.rank}" /></td>
					<td><a
						href="UserController?action=edit&userId=<c:out value="${user.id}"/>">更新</a></td>
					<td><a
						href="UserController?action=delete&userId=<c:out value="${user.id}"/>">删除</a></td>
				</tr>
				</c:when>
			</c:choose>

			</c:forEach>
		</tbody>
	</table>
	</div>
	<h2>男生排名</h2>
	<div class="table-responsive">
	<table class="table table-striped">
		<thead>
			<tr>
				<th>用户编号</th>
				<th>姓名</th>
				<th>性别</th>
				<th>部门</th>
				<th>积分</th>
				<th>排名</th>
				<th colspan=2>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${users}" var="user">
			<c:choose>
			    <c:when test = "${user.gender == '男'}">
				<tr>
					<td><c:out value="${user.id}" /></td>
					<td><c:out value="${user.name}" /></td>
					<td><c:out value="${user.gender}" /></td>
					<td><c:out value="${user.depart}" /></td>
					<td><c:out value="${user.score}" /></td>
					<td><c:out value="${user.rank}" /></td>
					<td><a
						href="UserController?action=edit&userId=<c:out value="${user.id}"/>">更新</a></td>
					<td><a
						href="UserController?action=delete&userId=<c:out value="${user.id}"/>">删除</a></td>
				</tr>
			</c:when>
			</c:choose>
			</c:forEach>
		</tbody>
	</table>
	</div>
	<p>
		<a href="UserController?action=insert" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">添加新球友</a>
	</p>
</div>
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>