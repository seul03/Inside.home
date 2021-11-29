<%@ include file="/WEB-INF/views/manager/main/mgrHeader.jsp"%>
<form:form action="insertQa.do" commandName="QuestionVo" method="POST">
	<aside id="aside">
			<div class="q_hgroup">
				<h2 class="tlt">고객문의</h2>
			</div>
				<ul>
					<li>
					<a herf="/manager/question/list.do">Q&A</a>
					<a herf="/manager/question/list.do">고객문의</a>
					</li>
				</ul>
	</aside>
	<thead>
	<nav class="qa_title">
		<ul class="qa_title_list">
			<li class="asktype">
			<a href="/asktype#회원가입및회원정보">회원가입및회원정보</a>
			</li>
			<li class="asktype">
			<a href="/asktype#게시판이용">게시판이용</a>
			</li>
			<li class="asktype">
			<a href="/asktype#포인트몰">포인트몰</a>
			</li>
			<li class="asktype">
			<a href="/asktype#기타">기타</a>
			</li>
		</ul>
	</nav>
	</thead>
	<tbody>
	<selection class="qa_content">
	<div class="tab_list">
		<c:forEach item="${selectAll} var="list">
			<tr>
				<td>${title}</td>
				<div class="side_menu" onclick="sideMenu();">
				<td>${content}</td>
				</div>
		</c:forEach>
		</tr>
	</tbody>
</form:form>
	<%@ include file="/WEB-INF/views/manager/main/mgrFooter.jsp"%>