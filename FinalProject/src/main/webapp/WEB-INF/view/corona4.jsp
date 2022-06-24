<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="./css/menu.css">
<title>coronaList</title>
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
		<h1>corona</h1>
		<table class="table table-striped table-hover" >
			<thead>
				<tr>
					<th scope="col" colspan="2">글번호</th>
					<th scope="col" colspan="2">기준일</th>
					<th scope="col" colspan="2">기준시간</th>
					<th scope="col" colspan="2">사망자수</th>
					<th scope="col" colspan="2">확진자수</th>
					<th scope="col" colspan="2">등록일</th>
					<th scope="col" colspan="2">수정일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${coronaList }" var="c">
					<tr>
						<td colspan="2">${c.seq }</td>
						<td colspan="2">${c.stateDt }</td>
						<td colspan="2">${c.stateTime }</td>
						<td colspan="2">${c.deathCnt }</td>
						<td colspan="2">${c.decideCnt }</td>
						<td colspan="2">${c.createDt }</td>
						<td colspan="2">${c.updateDt }</td>
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