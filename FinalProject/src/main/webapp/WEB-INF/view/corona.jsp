<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="./css/menu.css">
<title>corona</title>
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
  			<c:if test="${sessionScope.id ne null }">
  				<li class="nav-item">
    				<a class="nav-link" href="./myinfo_${sessionScope.id }.do">내정보보기</a>
  				</li>
  			</c:if>
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
  			<c:if test="${sessionScope.id ne null }">
  				<li class="nav-item">
    				<a class="nav-link" href="./myinfo_${sessionScope.id }.do">내정보보기</a>
  				</li>
  			</c:if>
		</ul>
	</div>
	<div id="main">
		<h1>corona</h1>
		<table class="table table-striped table-hover" >
			<thead>
				<tr>
					<th scope="col" colspan="2">인구 10만명 당 확진 수</th>
					<th scope="col" colspan="2">일일 확진 수</th>
					<th scope="col" colspan="2">일일 재원 위중증</th>
					<th scope="col" colspan="2">인구 10만명 당 신규 입원 수</th>
					<th scope="col" colspan="2">일일 사망자 수</th>
					<th scope="col" colspan="2">인구 10만명 당 사망자 수</th>
					<th scope="col" colspan="2">인구 10만명 당 재원 위중증</th>
					<th scope="col" colspan="2">일일 사망자 수</th>
					<th scope="col" colspan="2">데이터 일시</th>
				</tr>
			</thead>
			<tbody>
					<tr>
						<td colspan="2">${map.rate_confirmations }</td>
						<td colspan="2">${map.cnt_confirmations }</td>
						<td colspan="2">${map.cnt_severe_symptoms }</td>
						<td colspan="2">${map.cnt_hospitalizations }</td>
						<td colspan="2">${map.rate_deaths }</td>
						<td colspan="2">${map.rate_hospitalizations }</td>
						<td colspan="2">${map.rate_severe_symptoms }</td>
						<td colspan="2">${map.cnt_deaths }</td>
						<td colspan="2">${map.mmddhh }</td>
						
						
					</tr>
			</tbody>
		</table>
	</div>
	<div id="footer">
	
	</div>
</div>
</body>
</html>