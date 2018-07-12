<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	
<div class="navitagorDiv">
	<nav class="navbar navbar-default navbar-fixed-top navbar-inverse">
		<img style="margin-left:10px;margin-right:0px" class="pull-left" src="img/site/hzw.jpg" height="47px">
		<a class="navbar-brand" href="#nowhere">会议室预定系统</a>
		
		<a class="navbar-brand" href="fore_room_list">预定会议室</a>
		<a class="navbar-brand" href="fore_order_userlist?uid=${user.id}">个人预定管理</a>
		<a class="navbar-brand" href="fore_user_message?uid=${user.id}">用户信息管理</a>
		<a class="navbar-brand" href="fore_user_logout">用户退出</a>
	</nav>
</div>
