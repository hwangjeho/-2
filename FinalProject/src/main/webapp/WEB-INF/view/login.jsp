<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="./css/menu.css">
<script type="text/javascript">
$(document).ready(function(){
	$("#mobileMenu").hide();
	
	$("#hmenu").on("click", function(){
		//alert("메뉴클릭함");
		$("#mobileMenu").slideToggle(500);
	});
});
</script>
</head>
<body>
	<div id="container">
	<div id="header">
		<p>게시판</p>
	</div>
	<div id="hmenu">
		<img alt="햄버거메뉴" src="./img/burger.png">
	</div>
	<div id="menu">
		<ul class="nav">
  			<li class="nav-item">
    			<a class="nav-link" href="./login.do">로그인</a>
  			</li>
  			<li class="nav-item">
    			<a class="nav-link" href="./board.do">게시판</a>
  			</li>
  			<li class="nav-item">
    			<a class="nav-link" href="./index.do">메인</a>
  			</li>
  			<li class="nav-item">
    			<a class="nav-link" href="./corona.do">코로나19</a>
  			</li>
		</ul>
	</div>
	<div id="mobileMenu">
		<ul class="nav">
  			<li class="nav-item">
    			<a class="nav-link" href="./login.do">로그인</a>
  			</li>
  			<li class="nav-item">
    			<a class="nav-link" href="./board.do">게시판</a>
  			</li>
  			<li class="nav-item">
    			<a class="nav-link" href="./index.do">메인</a>
  			</li>
  			<li class="nav-item">
    			<a class="nav-link" href="./corona.do">코로나19</a>
  			</li>
		</ul>
	</div>
	<div id="main">
		<form action="./login.do" method="post">
  			<div class="mb-3">
    			<label for="exampleInputEmail1" class="form-label">아이디</label>
    			<input type="text" class="form-control" id="exampleInputEmail1" name="id" aria-describedby="emailHelp">
  			</div>
  			<div class="mb-3">
    			<label for="exampleInputPassword1" class="form-label">패스워드</label>
    			<input type="password" class="form-control" id="exampleInputPassword1" name="pw">
  			</div>
  			<div class="mb-3 form-check">
   				 <input type="checkbox" class="form-check-input" id="exampleCheck1">
   				 <label class="form-check-label" for="exampleCheck1">체크</label>
  			</div>
  				<button type="submit" class="btn btn-primary">로그인</button>
			</form>
	</div>
	<div id="footer">
	
	</div>
</div>
</body>
</html>