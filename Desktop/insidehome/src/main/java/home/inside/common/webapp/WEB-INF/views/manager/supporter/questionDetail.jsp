<%@ include file="/WEB-INF/views/manager/main/mgrHeader.jsp"%>
<form:form action="insertQa.do" commandName="QuestionVo" method="POST">
	<aside id="aside">
		<h2 class="tlt">고객문의</h2>
		<ul>
			<li><a herf="/manager/question/list.do">Q&A</a> <a
				herf="/manager/question/list.do">고객문의</a></li>
		</ul>
	</aside>
	<thead>
		<h3 class="tlt">고객문의</h3>
	</thead>
	<tbody>
		<c:foreach items="${selectone}" var="detail">
			<tr>
				<td></td>
				<td>${title}</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td class="Box">${content}</td>
				<td></td>
			</tr>
			<tr>
				<div align="left">답변작성</div>
				<textarea name="answer" id="answer" maxlength="2000" rows="15" cols="70"></textarea>
			</tr>
		</c:foreach>
	</tbody>
	<input type="submit" value="저장">
	<input type="button" value="목록" a href="/manager/question/list.do">
</form:form>
<%@ include file="/WEB-INF/views/manager/main/mgrFooter.jsp"%>
