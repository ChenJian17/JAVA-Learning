<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/fore/foreHeader.jsp"%>
<%@include file="../include/fore/foreNavigator.jsp"%>

<script>

</script>

<title>查看会议室预定情况</title>

<div class="workingArea">
	<h1 class="label label-info" >查看个人预定情况</h1>
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
					<th>删除</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ord}" var="o">
				
				<tr>
					<td>${o.id}</td>
					<td>${o.rid }</td>					
					
					<td>${o.date }</td>
					<td>${o.startTime}</td>
					<td>${o.endTime}</td>
					<td><a deleteLink="true" href="fore_order_delete?id=${o.id}">
                             <span class="   glyphicon glyphicon-trash"></span></a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
</div>

