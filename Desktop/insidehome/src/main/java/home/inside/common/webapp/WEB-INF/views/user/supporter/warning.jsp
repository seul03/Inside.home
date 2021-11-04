<%@ include file="/WEB-INF/views/user/main/userHeader.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form action="inside/main.do" method="POST">
<div class="margin">
<link href="/resources/css/style.css" rel="stylesheet">
<table>
<thead>
<input type="hidden" name="닉네임" value=${warning.nickname}>

<h3 class="type">신고사유</h3>
		<label for="warntype" style="float:left">신고사유 선택</label> <br>
		<select id="warntype" name="warntype"><br>
	     	<option value="none">==선택==</option>
			<option value="혐오">혐오</option>
			<option value="욕설">욕설</option>
			<option value="학대">학대</option>
			<option value="광고">광고</option>
			<option value="음란">음란</option>
		</select>

</thead>
<tbody>
<tr>
<div align="left">신고 상세 사유</div><br>
<textarea name="warnwhy" placeholder="신고 사유를 최소 20자, 최대 300자  입력해주세요." rows="15" cols="70"></textarea>
</tr>
<button type="submit" value="등록" onClick="location.href="imemberService/updateWarning">신고</button>
</table>
</tbody>
</form>
</div>
<%@ include file="/WEB-INF/views/user/main/userFooter.jsp" %>