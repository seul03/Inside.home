<%@ include file="/WEB-INF/views/user/main/userHeader.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form action="questionList.do" method="POST">
<link href="/resources/css/style.css" rel="stylesheet"/>
<script type="text/javascript" src="resource/js/javascript.js"></script>

	<aside id="aside">
		<div class="a_inner">
			<div class="q_hgroup">
				<h2 class="tlt">고객문의</h2>
			</div>
				<ul>
					<li>
					<a herf="/user/supporter/qalist">Q&A</a>
					<a herf="/user/supporter/insertQuestion">고객문의</a>
					<a herf="/user/supporter/questionlist">내 문의</a>
					</li>
				</ul>
		</div>
	</aside>	

	<tbody>
	<div class="hidden"><c:set var="id" value="${questionVo.nickname}"/></div>    
	<%String id = (String)pageContext.getAttribute("nickname");
     String sessionid = (String)session.getAttribute("id"); %>
     
        <c:if test="${sessionid eq id}">
        <c:foreach items="${selectall}" var="list">
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
