<%@ include file="/WEB-INF/views/manager/main/mgrHeader.jsp"%>
<form action="/manager/question/insert.do" method="POST">
	<aside id="aside">
		<div class="a_inner">
			<div class="q_hgroup">
				<h2 class="tlt">고객문의</h2>
			</div>
				<ul>
					<li>
					<a herf="/manager/supporter/qalist">Q&A</a>
					<a herf="/manager/supporter/updateQuestion">고객문의</a>
					</li>
				</ul>
		</div>
	</aside>
		<h3 class="tlt">Q&A</h3>


	<thead>
		<td class="table-inner"><b>분류</b></td>
		<td class="table-inner"><b>질문</b></td>
		<td class="table-inner"><b>내용</b></td>
   
		<c:foreach item="${selectAll} var="list">
			<tr>
				<td>${asktype}</td>
				<td>${title}</td>
				<td>${content}</td>
		</c:foreach>
		</tr>
     </thead>
     <tbody>
	<input class="Question" type="button" value="Q&A입력">
	<div class="add_qa" style="margin-top: 20px">

    <div>분류</div>
    		<select id="asktype" name="asktype">
		    <option value="none">==선택==</option>
			<option value="회원정보">회원정보</option>
			<option value="게시판 이용">게시판 이용</option>
			<option value="포인트 몰">포인트 몰</option>
			<option value="기타">기타</option>
		</select>
<tr>
<div>질문</div>
<input type="text" name="title" id="title" size=70" maxlength="30"/>
</tr>

<tr>
<div align="left">내용</div>
<textarea name="content" rows="15" cols="70"></textarea>
</tr>
</tbody>
		<input type="submit" value="등록">
	</div>
	</div>
	</form>
<%@ include file="/WEB-INF/views/manager/main/mgrFooter.jsp"%>