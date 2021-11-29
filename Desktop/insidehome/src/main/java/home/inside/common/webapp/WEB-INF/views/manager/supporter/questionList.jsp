<%@ include file="/WEB-INF/views/manager/main/mgrHeader.jsp"%>
<form action="/manager/question/list.do" method="POST">
	<aside id="aside">
		<h2 class="tlt">고객문의</h2>
		<ul>
			<li><a herf="/manager/question/list.do">Q&A</a></li>
			<li><a herf="/manager/question/list.do">고객문의</a></li>
		</ul>
	</aside>
	<tbody>
	       <c:if test="${empty answer}">
			<tr>
			    <td></td>
			    <td><a href="${path}/manager/question/detail.do={num}">${num}</td>
			    <td></td>
			</tr>
			<tr>
			    <td></td>			  
				<td>${title}</td>
				<td></td>
			</tr>
			<tr>
			    <td></td>
				<td>${hashMap.nickname}</td>
				<td></td>
			</tr>
			</c:if>
	</tbody>
</form>
<%@ include file="/WEB-INF/views/manager/main/mgrFooter.jsp"%>