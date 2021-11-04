<%@ include file="/WEB-INF/views/user/main/userHeader.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form:form action="questionList.do" commandName="QuestionVo" method="POST">
<link href="resources/css/style.css" rel="stylesheet" type="text/css">
	<aside id="aside">
				<h2 class="tlt">고객문의</h2>
				<ul>
					<li>
					<a herf="/user/question/list.do">Q&A</a>
					<a herf="/user/question/list.do">고객문의</a>
					<a herf="/user/question/insert.do">내 문의</a>
					</li>
				</ul>
	</aside>
		<h3 class="tlt">내 문의</h3>
	<thead>
		<td><b>문의 제목</b></td>
		<td><b>문의 내용</b></td>
	</thead>
	<tbody>
	<c:foreach items="${selectall}" var="list">
    <tr>
		<td></td>
		<td>${title}</td>
		<td></td>
	</tr>
	<tr>
		<td></td>
		<td class="Box">${content}</td>
		<td></td>
	</tr>
	 <c:if test="${not empty answer}">
	<tr>
		<td></td>
		<td>${answer}</td>
		<td></td>
	</tr>
	</c:if>
	</c:foreach>
	</tbody>
    <input type="button" value="목록" a href="/user/question/list.do">
	</form:form>
	<%@ include file="/WEB-INF/views/user/main/userFooter.jsp"%>