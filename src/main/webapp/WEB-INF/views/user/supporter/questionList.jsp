<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="/WEB-INF/views/user/main/userHeader.jsp"%>

<div class="body-info">
	<div class="info-detail">
		<h1 class="info-title">고객문의 내글목록</h1>
	</div>
	<hr>
	<div class="info-inner">

		<form action="<c:url value="/user/question/list.do"/>" method="POST">
		<input type="hidden" name="nickname" value="${nickname}"/>
            <div class="move">
		    <ul class="qa-list">
			<li class="qa-move"><a class="qa-move" href="<c:url value="/user/question/qalist.do"/>">Q&A</a></li>
			<li class="qa-move"><a class="qa-move" href="<c:url value="/user/question/insertForm.do"/>">고객문의</a></li>
			<li class="qa-move"><a class="qa-move" href="<c:url value="/user/question/list.do"/>">내 문의</a></li>
	        </ul>
			</div>
			<h2 class="title">고객문의</h2>
			<table>
				<tbody>
					<c:forEach items="${list}" var="one">
						<tr>
							<td><a href="<c:url value="/user/question/detail.do?num=${one.num}" />">${one.title}</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
	</div>
</div>

<%@include file="/WEB-INF/views/user/main/userFooter.jsp"%>