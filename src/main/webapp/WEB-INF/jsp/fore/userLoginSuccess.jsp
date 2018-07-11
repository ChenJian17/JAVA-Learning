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
      <input type="text" style="width:100px"  class="form-control" placeholder="startTime">
      <input type="text" style="width:100px"  class="form-control" placeholder="endTime">
      <button class="btn btn-primary" type="button">查询</button>
      
    </div>
    <br>
    
	<div class="listDataTableDiv">
		<form action="fore_order_add" method="post">
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
						         <span class="glyphicon glyphicon-edit"></span></a></td>
						<td><button type="submit" class="btn btn-primary" uid="${u.id }" rid="${r.id }">预定会议室</button></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
	</div>
	 <nav>
           <ul class="pager">
               <li><a href="#">上一页</a></li>
                   <li><a href="#">下一页</a></li>
           </ul>
	</nav>
</div>
