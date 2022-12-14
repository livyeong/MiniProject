<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />
<nav
	class="navbar navbar-expand-md bg-dark navbar-dark fixed-top shadow-lg">
	<a class="navbar-brand" href="${root }">๐busanIT</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navMenu">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navMenu">
		<ul class="navbar-nav">
			  <c:forEach var="menu" items="${topMenuList }">
      <li class="nav-item">
        <a href="${root }board/main?board_info_idx=${menu.board_info_idx}" class="nav-link">${menu.board_info_name }</a>
      </li>
	  </c:forEach>
		</ul>

		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a href="${root }user/login"
				class="nav-link">๋ก๊ทธ์ธ</a></li>
			<li class="nav-item"><a href="${root }user/join"
				class="nav-link">ํ์๊ฐ์</a></li>
			<li class="nav-item"><a href="${root }user/modify"
				class="nav-link">์ ๋ณด์์ </a></li>
			<li class="nav-item"><a href="${root }user/logout"
				class="nav-link">๋ก๊ทธ์์</a></li>
		</ul>
	</div>
</nav>
