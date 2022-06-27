<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>board</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<link rel="stylesheet" href="./css/menu.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript">
function ajax1(pageNo){
	$.ajax({
		url:"./boardAjax.do",
		type:"post",
		dataType:"json",
		data:{"pageNo" : pageNo},
		success:function(data){
			//var test = data.test;
			//alert(test);
			var list = data.list;
			
			alert(Object.keys(list).length);
			
			var html = "<table class='table table-striped table-hover'>";
			html += "<tr>";
			html += "<th scope='col' colspan='2'>#</th>";
			html += "<th scope='col' colspan='2'>글제목</th>";
			html += "<th scope='col' colspan='2'>쓴날짜</th>";
			html += "<th scope='col' colspan='2'>글쓴이</th>";
			html += "<th scope='col' colspan='2'>조회수</th>";
			html += "</tr>"
			$.each(list, function(index){
				html += "<tr>";
				html += "<th scope='row'>" + list[index].b_no + "</th>";
				html += "<td colspan='2'>" + list[index].b_title + "</td>";
				html += "<td colspan='2'>" + list[index].b_date + "</td>";
				html += "<td colspan='2'>" + list[index].u_id + "</td>";
				html += "<td colspan='2'>" + list[index].b_count + "</td>";
				html += "</tr>"
			});
			
			html += "</table>"
			$("#json").append(html);
		},
		error:function(){
			
		}
	});
}

$(document).ready(function(){
	$("#mobileMenu").hide();
	
	$("#hmenu").on("click", function(){
		//alert("메뉴클릭함");
		$("#mobileMenu").slideToggle(500);
	});
});

$(document).ready(function(){
	ajax1(2);
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
		 <h1>board ${fn:length(boardList)}</h1>
         
         <div id="json"></div>
		
	</div>
	<div id="footer">
	
	</div>
</div>
</body>
</html>