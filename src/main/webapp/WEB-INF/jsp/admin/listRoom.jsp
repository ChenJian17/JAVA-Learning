<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>

<script>

</script>

<title>会议室管理</title>

<div class="workingArea">
	<h1 class="label label-info" >分类管理</h1>
	<br>
	<br>
	
	<div class="listDataTableDiv">
		<table class="table table-striped table-bordered table-hover  table-condensed">
			<thead>
				<tr class="success">
					<th>会议室ID</th>
					<th>会议室名称</th>
					<th>容量</th>
					<th>设备</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${rs}" var="r">
				
				<tr>
					<td>${r.id}</td>
					<td>${r.name }</td>
					<td>${r.capacity }</td>
					<td>${r.device }</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<div class="pageDiv">
		<%//@include file="../include/admin/adminPage.jsp" %>
	</div>
	
	
</div>

<%@include file="../include/admin/adminFooter.jsp"%>
