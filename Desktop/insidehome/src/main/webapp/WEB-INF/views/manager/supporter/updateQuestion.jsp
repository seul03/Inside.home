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
	
	<div class="tab_list">
		<h3 class="tlt">고객 문의</h3>
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
	<div class="boxed">
<input type="text" name="answer" id="answer">
</div>
	</tr>
	
	</tbody>
	<input type="submit" value="등록">
	</form:form>
<%@ include file="/WEB-INF/views/manager/main/mgrFooter.jsp"%>