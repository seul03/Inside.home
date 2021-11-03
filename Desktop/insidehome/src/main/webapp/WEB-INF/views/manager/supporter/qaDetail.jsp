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
		<div class="tab_list">
			<h3 class="tlt">고객문의</h3>
			</ul>
		</div>
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
		<div class="tgroup">
			<p class="an">답변 작성</p>
		</div>
		<div class="boxed">
			<input type="text" name="answer" id="answer" maxlength="2000">
		</div>
	</tbody>
	<input type="submit" value="저장">
</form:form>
<%@ include file="/WEB-INF/views/manager/main/mgrFooter.jsp"%>
