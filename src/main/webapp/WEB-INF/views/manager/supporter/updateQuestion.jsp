<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/manager/main/mgrHeader.jsp"%>

<form action="<c:url value="/manager/question/update.do"/>"	method="POST">
        <input type="hidden" name="num" value="${num}" />
	    <input type="hidden" name="nickname" value="seoul" /> 
		<input type="hidden" name="askType" value="customer" />
	<div class="move">
		<ul class="qa-list">
			<li class="qa-move"><a class="qa-move"	href="<c:url value="/manager/question/list.do"/>">Q&A</a></li>
			<li class="qa-move"><a class="qa-move"	href="<c:url value="/manager/question/list.do"/>">고객문의</a></li>
		</ul>
	</div>
	<h2 class="title">고객 문의</h2>
	<table>
		<thead>
			<c:forEach items="${detail}" var="update">
			<tr>
				<td><input type="hidden" name="askType" id="askType" value="customer" /></td>
			</tr>
				<tr>
				<td>문의 종류</td>
				<td><input type="text" name="title" id="title" value="${update.title}" readonly/></td>
				</tr>
		
			<tr>
			<td>문의 내용</td>
				<td><input type="text" name="content" id="content" value="${update.content}" readonly/></td>
			</tr>
			</c:forEach>
			</thead>
		    <tbody>
			<tr>
				<td>답변</td>
				<td><textarea name="answer" id="answer" rows="15" cols="70"></textarea></td>
			</tr>
			
		</tbody>
	</table>
	<button type="submit" value="등록">등록</button>
</form>
<%@ include file="/WEB-INF/views/manager/main/mgrFooter.jsp"%>