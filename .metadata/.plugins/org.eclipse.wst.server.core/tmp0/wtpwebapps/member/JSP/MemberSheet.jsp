<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/member/Styles/home.css">
<link rel="stylesheet" media="screen and  (max-width: 780px)" href="/member/Styles/home780.css" />
<link rel="stylesheet" href="/member/Styles/memberSheet.css">
<script src="/member/javascript/jquery-3.7.1.min.js"></script>
<script src="/member/javascript/MemberSheet.js"></script>
<title>會員管理</title>
</head>
<body>
    <main id="allpage">
        <header>
            <nav>
                <ul class="menu">
                    <li><a href="" class="active">會員管理</a></li>
                    <li><a href="">遊戲管理</a></li>
                    <li><a href="">交易管理</a></li>
                    <li><a href="">論壇管理</a></li>
                    <li><a href="">陪玩管理</a></li>
                    <li><a href="">活動管理</a></li>
                    <li class="right"><a href="/member/JSP/Home.jsp">回到首頁</a></li>
                </ul>
            </nav>
        </header>
        <div class="page" align="center">
            <h1>員工資料</h1>
            <article>
                <form action="" method="post">
                    <table>
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>帳號</th>
                                <th>密碼</th>
                                <th>email</th>
                                <th>註冊日期</th>
                                <th>最後登入時間</th>
                                <th>身分</th>
                                <th>消費金額</th>
                                <th>會員等級</th>
                                <th>暱稱</th>
                                <th>姓名</th>
                                <th>生日</th>
                                <th>手機號碼</th>
                                <th>住址</th>
                                <th>第三方登入</th>
                                <th>陪玩帳號</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${members}" var="mb">
                        	<tr>
                        		<td>${mb.id }</td>
                        		<td>${mb.account }</td>
                        		<td>${mb.password }</td>
                        		<td>${mb.email }</td>
                        		<td>${mb.registDate }</td>
                        		<td>${mb.lastLogin }</td>
                        		<td>${mb.role }</td>
                        		<td>${mb.consumption }</td>
                        		<td>${mb.level }</td>
                        		<td>${mb.nickName }</td>
                        		<td>${mb.memName }</td>
                        		<td>${mb.birthday }</td>
                        		<td>${mb.phone }</td>
                        		<td>${mb.address }</td>
                        		<td>${mb.sso }</td>
                        		<td>${mb.accomAccount }</td>
                        	</tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <button type="button" class="button insert">新增</button>
                    <button type="button" class="button update">更新</button>
                    <button type="button" class="button delete">刪除</button>
                    <button type="submit" class="button submit">確定</button>
                    <button type="button" class="button cancel">取消</button>
                </form>
                <c:if test="${descript != null }">
                    <h3 class="hint">123${descript}</h3>
                </c:if>
            </article>
        </div>
	</main>
</body>
</html>