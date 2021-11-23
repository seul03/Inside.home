<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/manager/main/mgrHeader.jsp"%>

<div class="body-info">
	<div class="info-detail">
		<h1 class="info-title">고객문의 목록</h1>
	</div>
	<hr>
	<div class="info-inner">
	
    <form action="<c:url value="/manager/question/list.do"/>" method="POST">
    <div class="move">
		    <ul class="qa-list">
			<li class="qa-move"><a class="qa-move" href="<c:url value="/manager/question/list.do"/>">Q&A</a></li>
			<li class="qa-move"><a class="qa-move" href="<c:url value="/manager/question/list.do"/>">고객문의</a></li>
	        </ul>
			</div>
	<h2 class="title">고객문의</h2>
	<table>
	<tbody>
	<c:forEach items="${list}" var="one">
	<c:if test="${empty answer}">
			<tr>
			    <td><a href="<c:url value="/manager/question/detail.do?num=${one.num}" />">${one.title}</a></td>
			</tr>
			<tr>
				<td>${one.nickname}</td>
			</tr>
	</c:if>
	</c:forEach>
	
	</tbody>
	</table>
</form>
</div>
</div>
<%@ include file="/WEB-INF/views/manager/main/mgrFooter.jsp"%>