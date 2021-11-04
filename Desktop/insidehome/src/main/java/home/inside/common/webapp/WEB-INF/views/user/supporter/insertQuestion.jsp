<%@ include file="/WEB-INF/views/user/main/userHeader.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form action="/user/question/list.do" method="POST">
<link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet">
<div class="aside">
<ul>
 <li>
 <a href="<c:url value="/user/question/list.do"/>">Q&A</a>
 <a href="<c:url value="/user/question/insert.do"/>">고객문의</a>
 <a href="<c:url value="/user/question/list.do"/>">내 문의</a>
 </li>
 </ul>
</div>
<h3 class="tlt">고객문의</h3>
<thead>
<div>문의 종류 </div>
		<select id="asktype" name="asktype">
		    <option value="none">==선택==</option>
			<option value="회원정보">회원정보</option>
			<option value="게시판 이용">게시판 이용</option>
			<option value="포인트 몰">포인트 몰</option>
			<option value="기타">기타</option>
		</select>
		
</thead>
<tbody>
<tr>
<div>제목</div>
<input type="text" name="title" id="title" size=70" maxlength="30"/>
</tr>

<tr>
<div align="left">내용</div>
<textarea name="content" rows="15" cols="70"></textarea>
</tr>
</tbody>
<input type="submit" value="등록">
</body>
</form>

<%@ include file="/WEB-INF/views/user/main/userFooter.jsp"%>
