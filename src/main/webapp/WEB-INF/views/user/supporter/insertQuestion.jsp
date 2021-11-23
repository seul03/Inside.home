<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="/WEB-INF/views/user/main/userHeader.jsp"%>


<div class="body-info">
	<div class="info-detail">
		<h1 class="info-title">회원 고객문의 입력화면</h1>
	</div>
	<hr>
	<div class="info-inner">
		<form action="<c:url value="/user/question/insert.do"/>" method="POST">
		<input type="hidden" name="nickname" value="${nickname}" />
		<input type="hidden" name="askType" value="${askType}" />
			<div class="move">
		    <ul class="qa-list">
			<li class="qa-move"><a class="qa-move" href="<c:url value="/user/question/qalist.do"/>">Q&A</a></li>
			<li class="qa-move"><a class="qa-move" href="<c:url value="/user/question/insertForm.do"/>">고객문의</a></li>
			<li class="qa-move"><a class="qa-move" href="<c:url value="/user/question/list.do"/>">내 문의</a></li>
	        </ul>
			</div>
			<h2 class="title">고객문의</h2>
			<table>
				<thead>
					<tr>
				
						<td>문의 종류</td>
						<td><input type="text" name="asktype" id="asktype" size="70" value="customer" readonly/></td>
				
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>제목</td>
						<td><input type="text" name="title" id="title" size="70"  maxlength="30" /></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea name="content" id="content" rows="15" cols="70"></textarea></td>
					</tr>
				</tbody>
			</table>
			<button type="submit" value="등록">문의</button>
		</form>
	</div>
</div>

<%@include file="/WEB-INF/views/user/main/userFooter.jsp"%>