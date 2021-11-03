<%@ include file="/WEB-INF/views/manager/main/mgrHeader.jsp"%>
<form:form action="insertQa.do" commandName="QuestionVo" method="POST">
	<aside id="aside">
		<div class="a_inner">
			<div class="q_hgroup">
				<h2 class="tlt">고객문의</h2>
			</div>
			<nav id="ln" class="ln">
				<ul>
					<li><a herf="/manager/supporter/qalist">Q&A</a></li>
					<li><a herf="/manager/supporter/updateQuestion">고객문의</a></li>
				</ul>
			</nav>
		</div>
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
		<c:forEach item="${question} var="questionVo">
			<tr>
				<td>${questionVo.title}</td>
				<div class="side_menu" onclick="sideMenu();">
				<td>${questionVo.askdate}</td>
				</div>
		</c:forEach>
		</tr>
	</tbody>
</form:form>
	<%@ include file="/WEB-INF/views/manager/main/mgrFooter.jsp"%>