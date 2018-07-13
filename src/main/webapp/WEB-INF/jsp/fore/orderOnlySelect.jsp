<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/fore/foreHeader.jsp"%>
<%@include file="../include/fore/foreNavigator.jsp"%>

<script>

</script>

<title>查看本次会议室预定</title>

<div class="workingArea">
	<h1 class="label label-info" >本次会议室预定信息</h1>
	<br>
	<br>	
	<div class="listDataTableDiv">
		<table class="table table-striped table-bordered table-hover  table-condensed">
			<thead>
				<tr class="success">
					<th>会议编号</th>
					<th>会议室ID</th>
					<th>预定者工号</th>
					<th>预定日期</th>
					<th>会议开始时间</th>
					<th>会议结束时间</th>
					<th>开会人员管理</th>
					<th>会议室预定</th>
					
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${o.id}</td>
					<td>${o.rid }</td>					
					<td>${o.uid }</td>
					<td>${o.date }</td>
					<td>${o.startTime}</td>
					<td>${o.endTime}</td>
					<td>
						<a href="fore_meeting_manager?oid=${o.id}">
						    <span class="glyphicon glyphicon-list"></span>
						</a>
					</td>
					<td>
						<a deleteLink="true" href="fore_order_delete?id=${o.id}">
                             <button type="button" class="btn btn-danger">取消预定</button>
                        </a>
                    </td>
				</tr>
			</tbody>
		</table>
	</div>
	
</div>


<%@include file="../include/admin/adminFooter.jsp"%>
