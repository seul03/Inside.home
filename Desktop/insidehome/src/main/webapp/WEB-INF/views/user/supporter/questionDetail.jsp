<%@ include file="/WEB-INF/views/user/main/userHeader.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form:form action="questionList.do" commandName="QuestionVo" method="POST">
<link href="resources/css/style.css" rel="stylesheet" type="text/css">
	<aside id="aside">
		<div class="a_inner">
			<div class="q_hgroup">
				<h2 class="tlt">고객문의</h2>
			</div>
			<nav id="ln" class="ln">
				<ul>
					<li><a herf="/user/supporter/qalist">Q&A</a></li>
					<li><a herf="/user/supporter/insertQuestion">고객문의</a></li>
					<li><a herf="/user/supporter/questionlist">내 문의</a></li>
				</ul>
			</nav>
		</div>
	</aside>
	<div class="tab_list">
		<h3 class="tlt">내 문의</h3>
		</ul>
	</div>
	<thead>
		<td><b>문의 제목</b></td>
		<td><b>문의 내용</b></td>
	</thead>
	<tbody>
	<tr>
	<td>${questionVo.title}</td>
	</tr>
	<tr>
	<td class="Box">${questionVo.content}</td>
	</tr>
	<tr>
	<td>${questionVo.answer}</td>
	</tr>
	
	</tbody>
	</form:form>
	<%@ include file="/WEB-INF/views/user/main/userFooter.jsp"%>