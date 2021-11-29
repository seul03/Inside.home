<%@ include file="/WEB-INF/views/manager/main/mgrHeader.jsp"%>
<form action="/manager/question/list.do" method="POST">
	<aside id="aside">
		<h2 class="tlt">고객문의</h2>
		<ul>
			<li><a herf="/manager/question/list.do">Q&A</a> <a
				herf="/manager/question/list.do">고객문의</a></li>
		</ul>
	</aside>
	<thead>
		<h3 class="tlt">고객 문의</h3>
	</thead>
	<tbody>
	<c:foreach items="${updateQuestionSubmit}" var="update">
		<tr>
			<td></td>
			<td>${update.title}</td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td class="Box">${update.content}</td>
			<td></td>
		</tr>
		<tr>
			<div>답변</div>
			<textarea name="answer" rows="15" cols="70"></textarea>
		</tr>
		</c:foreach>
	</tbody>
	<input type="submit" value="등록">
</form>
<%@ include file="/WEB-INF/views/manager/main/mgrFooter.jsp"%>