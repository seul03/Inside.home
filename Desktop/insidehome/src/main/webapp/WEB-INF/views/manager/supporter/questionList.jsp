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
	<tbody>
	<input name="Rowcheck" type="checkbox" value="${questionVo.num}"/>
		<td class="table-inner"><b>분류</b></td>
		<td class="table-inner"><b>질문</b></td>
		<td class="table-inner"><b>내용</b></td>
		<c:forEach item="${question} var="questionVo">
			<tr>
				<td>${questionVo.asktype}</td>
				<td>${questionVo.title}</td>
				<td>${questionVo.content}</td>
			</tr>
			</c:forEach>
	</tbody>
	<input class="Question" type="button" value="Q&A입력">
	<div class="add_qa" style="margin-top: 20px">
		<div class="asktype">
			<span class="important">* </span>&nbsp; 분류
		</div>
		<div class="inputdname">
			<input type="text" class="question">
		</div>
	</div>
	<div class="title">
		<div class="dss">
			<span class="important">* </span>&nbsp; 질문
		</div>
		<div class="inputdnse">
			<input type="text" class="question">
		</div>
	</div>
	<div class="doctorname">
		<div class="dn">
			<span class="important">* </span>&nbsp; 내용
		</div>
		<div class="inputdname">
			<input type="text" class="question">
		</div>
	</div>
	</div>
	<div class="insertQa"></div>
	<div>
		<input type="button" value="등록" onClick="location.href="insertQa">
		<input type="button" value="수정" onClick="location.href="updateQa">
	</div>
	</div>
</form:form>
<%@ include file="/WEB-INF/views/manager/main/mgrFooter.jsp"%>