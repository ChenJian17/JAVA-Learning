<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/fore/foreHeader.jsp"%>
<%@include file="../include/fore/foreNavigator.jsp"%>
<script type="text/javascript">
    onload = function ()
    {
       var year=new Date().getFullYear(); //获取当前年份
       var sel = document.getElementById ('year');//获取select下拉列表
       for ( var i = 2018; i <= year; i++)//循环添加2006到当前年份加3年的每个年份依次添加到下拉列表
       {
           var option = document.createElement ('option');
           option.value = i;
           var txt = document.createTextNode (i);
           option.appendChild (txt);
           sel.appendChild (option);
       }
       
       var month =new Date().getMonth()+1; //获取月份
       var set = document.getElementById ('month');//获取select下拉列表

       for ( var i = month; i <= month+11,i<=12; i++)
       {
           var option = document.createElement ('option');
           option.value = i;
           var txt = document.createTextNode (i);
           option.appendChild (txt);
           set.appendChild (option);
       }
      
       var date = new Date(new Date().getFullYear(), new Date().getMonth()+1, 1),
       lastDay = new Date(date.getTime() - 864e5).getDate();
      
       var setDay = document.getElementById ('day');//获取select下拉列表
       for ( var i = new Date().getDate(); i <=lastDay; i++)
       {
           var option = document.createElement ('option');
           option.value = i;
           var txt = document.createTextNode (i);
           option.appendChild (txt);
           setDay.appendChild (option);
       }
    }
</script>

<title>首页-会议室预定</title>
<div class="workingArea">
	<h1 class="label label-info" >会议室预定</h1>
	<br>
	<br>
	
    <div class="input-group">
      <!-- <input type="text" style="width:100px"  class="form-control" placeholder="startTime">
      <input type="text" style="width:100px"  class="form-control" placeholder="endTime"> -->
      <select id="year"></select><span>年</span>
      <select id="month"></select><span>月</span>
      <select id="day"></select><span>日</span>
       <select id="st" placeholder="09:00:00">
        <option >09:00:00</option>
		 <option >10:00:00</option>
		 <option >11:00:00</option>
       </select><span>开始</span>
       <select id="et" placeholder="11:00:00">
         <option >10:00:00</option>
		 <option >11:00:00</option>
		 <option >12:00:00</option>
       </select><span>结束</span>
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
