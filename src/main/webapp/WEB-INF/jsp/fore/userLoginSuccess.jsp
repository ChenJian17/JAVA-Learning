<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/fore/foreHeader.jsp"%>
<%@include file="../include/fore/foreNavigator.jsp"%>
<script>

</script>

<title>首页-会议室预定</title>
<div class="workingArea">
	<h1 class="label label-info" >会议室预定</h1>
	<br>
	<br>
	
    <div class="input-group">
      <!-- <input type="text" style="width:100px"  class="form-control" placeholder="startTime">
      <input type="text" style="width:100px"  class="form-control" placeholder="endTime"> -->
      <span>  </span><button class="btn btn-primary" type="button">查询空会议室</button>
      
    </div>
    <br>
    
	<div class="listDataTableDiv">
		
			<table class="table table-striped table-bordered table-hover  table-condensed">
	           <thead>
					<tr class="success">
						<th>会议室ID</th>
						<th>会议室名称</th>
						<th>容量</th>
						<th>设备</th>
						<th>开会人员情况</th>
						<th>预定情况</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${rs}" var="r">
					
					<tr>
						<td>${r.id}</td>
						<td>${r.name }</td>
						<td>${r.capacity }</td>
						<td>${r.device }</td>
						<td><a href="admin_room_edit?id=${r.id}">
						         <span class="glyphicon glyphicon-list"></span></a></td>
						<td>
							<form action="fore_order_add" method="post">
								<button type="submit" class="btn btn-primary">预定会议室</button>
							</form>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		
	</div>
	<div class="pageDiv">
		<%@include file="../include/admin/adminPage.jsp" %>
	</div>
</div>
