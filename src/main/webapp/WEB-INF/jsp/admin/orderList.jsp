<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>

<script>

</script>

<title>查看会议室预定情况</title>

<div class="workingArea">
	<h1 class="label label-info" >查看会议室预定情况</h1>
	<br>
	<br>
	
	<div class="listDataTableDiv">
		<table class="table table-striped table-bordered table-hover  table-condensed">
			<thead>
				<tr class="success">
					<th>预定历史id</th>
					<th>会议室id</th>
					<th>预定日期</th>
					<th>预定使用开始时间</th>
					<th>预定使用结束时间</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${os}" var="o">
				
				<tr>
					<td>${o.id}</td>
					<td>${o.rid }</td>					
					
					<td>${o.date }</td>
					<td>${o.startTime}</td>
					<td>${o.endTime}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
</div>

<div class="pageDiv">
		<%@include file="../include/admin/adminPage.jsp" %>
	</div>

<%@include file="../include/admin/adminFooter.jsp"%>
