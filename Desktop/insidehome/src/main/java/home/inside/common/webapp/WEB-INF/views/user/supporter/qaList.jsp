<%@ include file="/WEB-INF/views/user/main/userHeader.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form action="/user/question/list.do" method="POST">
<link href="/resources/css/style.css" rel="stylesheet"/>
<script type="text/javascript" src="resource/js/javascript.js"></script>
	<tbody>
	<c:foreach items="${selectall}" var = "list">
	<tr>
	    <td></td>
	    <td>${title}</td>
	    <td></td>
	</tr>

	</c:foreach>
	<div class="menu" onclick="sideMenu();"></div>
	    <div class="side_menu" onclick="sideMenu();">
	<tr>
	    <td></td>
	    <td>${content}</td>
	    <td></td>
	</tr> 
	 </div>
	</select>				
	</tbody>
	</form>
<%@ include file="/WEB-INF/views/user/main/userFooter.jsp"%>

