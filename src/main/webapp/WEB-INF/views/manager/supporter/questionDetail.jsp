<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/manager/main/mgrHeader.jsp"%>

<div class="info-detail">
		<h1 class="info-title">고객문의 상세창</h1>
</div>
<div class ="info-inner">
<form action="<c:url value="/manager/question/list.do"/>" method="POST">

		<h2 class="title">고객문의</h2>
	<table>
	<thead>	
			<tr>
				<td>${detail.title}</td>
			</tr>	
			</thead>
	        <tbody>			
			<tr>
				<td class="Box">${detail.content}</td>
			</tr>
			<tr>
				<td><textarea name="answer" id="answer" maxlength="2000" rows="15" cols="70"></textarea></td>
			</tr>
	</tbody>
	</table>
	<input type="submit" value="저장">
	<a href="javascript:history.back();">목록</a>
</form>
</div>
<%@ include file="/WEB-INF/views/manager/main/mgrFooter.jsp"%>
