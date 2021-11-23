<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="/WEB-INF/views/user/main/userHeader.jsp"%>


<div class="body-info">
	<div class="info-detail">
		<h1 class="info-title">신고창</h1>
	</div>
	<hr>
	<div class="info-inner">
		<form action="<c:url value="/user/warning/insert.do"/>" method="POST">
		   <input type="hidden" name="nickname" value="${nickname}"/>
           <input type="hidden" name="boardNum" value="${boardNum}" />
		
				<table>
					<thead>
						<tr>
							<td>신고사유</td>
							<td>
								<select id="warnType" name="warnType">
									<option value="none">==선택==</option>
									<option value="hate">혐오</option>
									<option value="swear">욕설</option>
									<option value="abuse">학대</option>
									<option value="ad">광고</option>
									<option value="lewd">음란</option>
								</select>
							</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>신고 상세 사유</td>
							<td>
								<textarea name="warnWhy"
											placeholder="신고 사유를 최소 20자, 최대 300자  입력해주세요." 
											rows="15" cols="70">
								</textarea>
							</td>
						</tr>
					</tbody>
				</table>
			<button type="submit" value="등록">신고</button>
		</form>
	</div>
</div>

<%@include file="/WEB-INF/views/user/main/userFooter.jsp"%>