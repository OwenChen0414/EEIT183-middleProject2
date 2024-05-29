<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/member/Styles/home.css">
<link rel="stylesheet" media="screen and  (max-width: 780px)" href="/member/Styles/home780.css" />
<title>首頁</title>
</head>
<body>
    <main id="allpage">
        <header>
            <img class="logo-img" src="/member/images/logo.jpg" title="logo" alt="logo">
            <nav>
                <ul class="menu">
                    <li><a href="/member/JSP/Home.jsp">首頁</a></li>
                    <li><a href="">遊戲</a></li>
                    <li><a href="">交易</a></li>
                    <li><a href="">論壇</a></li>
                    <li><a href="">陪玩</a></li>
                    <li><a href="">活動</a></li>
                    <c:if test="${role == 'manager' }">
	                    <li><a href="">管理員入口</a></li>
                    </c:if>
                    <li class="right">
                        <c:if test="${role == 'manager' || role == 'member'}" var="condition">
                        	<a href="/member/Logout">${member.account}登出</a>
                        </c:if>
                        <c:if test="${!condition}">
                        	<a href="/member/Login">登入</a>
                        </c:if>
                    </li>
                </ul>
            </nav>
        </header>
	</main>
</body>
</html>