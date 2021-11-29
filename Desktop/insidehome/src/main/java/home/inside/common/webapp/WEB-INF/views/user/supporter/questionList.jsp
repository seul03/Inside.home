<%@ include file="/WEB-INF/views/user/main/userHeader.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form action="questionList.do" method="POST">
	<link href="/resources/css/style.css" rel="stylesheet" />
	<script type="text/javascript" src="resource/js/javascript.js"></script>

	<aside id="aside">
		<h2 class="tlt">고객문의</h2>
		<ul>
			<li><a herf="/user/question/list.do">Q&A</a> <a
				herf="/user/question/list.do">고객문의</a> <a
				herf="/user/question/insert.do">내 문의</a></li>
		</ul>
	</aside>
	<tbody>
		<div class="hidden">
			<c:set var="id" value="${questionVo.nickname}" />
		</div>
		<%String id = (String)pageContext.getAttribute("nickname");
     String sessionid = (String)session.getAttribute("id"); %>

		<c:if test="${sessionid eq id}">
			<c:foreach items="${selectall}" var="list">
			    <tr>
				    <td></td>
	                <td><a href="${path}/user/question/detail.do={num}">${num}</td>
	                <td></td>
				</tr>
				<tr>
					<td></td>
					<td>${title}</td>
					<td></td>
				</tr>
			</c:foreach>
		</c:if>
		</tr>
	</tbody>
</form>
<%@ include file="/WEB-INF/views/user/main/userFooter.jsp"%>
