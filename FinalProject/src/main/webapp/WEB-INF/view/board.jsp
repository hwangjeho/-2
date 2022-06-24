<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<link rel="stylesheet" href="./css/menu.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript">
$(document).ready(function(){
	$("#mobileMenu").hide();
	
	$("#hmenu").on("click", function(){
		//alert("메뉴클릭함");
		$("#mobileMenu").slideToggle(500);
	});
});
</script>
<style type="text/css">
th, td{
	text-align: center;
	vertical-align: middle;
}
</style>
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
    			<a class="nav-link" href="./corona2.do">코로나19</a>
  			</li>
  			<li class="nav-item">
    			<a class="nav-link" href="./corona4.do">코로나19리스트</a>
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
    			<a class="nav-link" href="./corona2.do">코로나19</a>
  			</li>
  			<li class="nav-item">
    			<a class="nav-link" href="./corona4.do">코로나19리스트</a>
  			</li>
		</ul>
	</div>
	<div id="main">
		<table class="table table-striped table-hover" >
			<thead>
				<tr>
					<th scope="col" colspan="2">#</th>
					<th scope="col" colspan="2">글제목</th>
					<th scope="col" colspan="2">글내용</th>
					<th scope="col" colspan="2">쓴날짜</th>
					<th scope="col" colspan="2">글쓴이</th>
					<th scope="col" colspan="2">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${boardList }" var="b">
					<tr>
						<th scope="row">${b.b_no }</th>
						<td colspan="2">${b.b_title }</td>
						<td colspan="2">${b.b_content }</td>
						<td colspan="2">${b.b_date }</td>
						<td colspan="2">${b.u_id }</td>
						<td colspan="2">${b.b_count }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div id="footer">
	
	</div>
</div>
</body>
</html>