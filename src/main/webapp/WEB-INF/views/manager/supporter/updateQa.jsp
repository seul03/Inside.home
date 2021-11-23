<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/manager/main/mgrHeader.jsp"%>

<form action=<c:url value="/manager/question/update.do"/>" method="post">
<div class="move">
		    <ul class="qa-list">
			<li class="qa-move"><a class="qa-move" href="<c:url value="/manager/question/list.do"/>">Q&A</a></li>
			<li class="qa-move"><a class="qa-move" href="<c:url value="/manager/question/list.do"/>">고객문의</a></li>
	        </ul>
			</div>
	<h2 class="title">Q&A</h2>
	<div class="qa-inner">
	<table>
	<thead>
	<tr>
		<td class="qa-inner"><b>분류</b></td>
		<td class="qa-inner"><b>질문</b></td>
		<td class="qa-inner"><b>내용</b></td>
</tr>
	</thead>
	<tbody>
	<c:forEach items="${list} var="up">
<tr>
		<td>분류</td>
		<td>
		<select id="askType" name="askType">
			<option value="none">==선택==</option>
			<option value="회원정보">회원정보</option>
			<option value="게시판 이용">게시판 이용</option>
			<option value="포인트 몰">포인트 몰</option>
			<option value="기타">기타</option>
		</select>
		</td>
		</tr>
		<tr>
			<td>질문</td>
			<td><input type="text" value="${up.title}" name="title" id="title" size="70" maxlength="30"/></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="content" value="${up.content}" id="content" size="70"></textarea></td>
		</tr>
		</c:forEach>
		</tbody>
		</table>
				
				</div>
		<input type="submit" value="등록">
	</form>
<%@ include file="/WEB-INF/views/manager/main/mgrFooter.jsp"%>