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
	   <table class="table table-striped table-bordered table-hover  table-condensed">
           <thead>
				<tr class="success">
					<th>会议室ID</th>
					<th>会议室名称</th>
					<th>预定日期</th>
					<th>开始使用时间</th>
					<th>结束使用时间</th>
					<th>预订人</th>
				</tr>
			</thead>
	        <tbody>
				
				<tr>
					<td>id</td>
					<td>name </td>
					<td>date</td>
					<td>startTime </td>
					<td>endTime </td>
                    <td>userName </td>
				</tr>
				
			</tbody>
		</table>
	</div>
	 <nav>
           <ul class="pager">
               <li><a href="#">上一页</a></li>
                   <li><a href="#">下一页</a></li>
           </ul>
	</nav>
</div>
