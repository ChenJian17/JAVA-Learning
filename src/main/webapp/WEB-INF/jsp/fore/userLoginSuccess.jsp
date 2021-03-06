<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/fore/foreHeader.jsp"%>
<%@include file="../include/fore/foreNavigator.jsp"%>
<script type="text/javascript">

$(function(){
   $("#selectButton").click(function(){
	   
	   var year = $("#year option:selected").text();
	   var month = $("#month option:selected").text();
	   if(month.length<=1){
		   month = "0"+month;
		   /* alert(month); */
	   }
	   var day = $("#day option:selected").text();
	   if(day.length<=1){
		   day = "0"+day;
		   /* alert(day); */
	   }
	   var date = year+"-"+month+"-"+day;
	   var start = $("#st option:selected").text();
	   var end = $("#et option:selected").text();
	   var startTime = date+" "+start;
	   var endTime = date+" "+end;
		
	   $("#startInput").attr("value",startTime);
	   $("#endInput").attr("value",endTime);
	   $("#yearInput").attr("value",year);
	   $("#monthInput").attr("value",month);
	   $("#dayInput").attr("value",day);
	   var page = $(this).attr("path");
	   $("#form").attr("action",page);
	   $("#form").submit();
   });
   
   $(".orderButton").click(function(){
	    var confirmOrder = confirm("确认预定");
		if(confirmOrder){
			var startTimeInput = "${startTimeInput}";
			var endTimeInput = "${endTimeInput}";
			$(".startTimeInput").attr("value",startTimeInput);
			$(".endTimeInput").attr("value",endTimeInput);
			/* alert($(".startTimeInput").attr("value")+"到--"+$(".endTimeInput").attr("value")); */
			var page = $(this).attr("path");
			$(".orderForm").attr("action",page);
			$(".orderForm").submit();
			return true;
		}
			
		return false;
	});
   
   onload = function ()
   {	
      var year=new Date().getFullYear(); //获取当前年份
      var sel = document.getElementById ('year');//获取select下拉列表
      
      /* if(game=="1")
    	  return ; */
      
      for ( var i = 2018; i <= year; i++)//循环添加2018到当前年份的每个年份依次添加到下拉列表
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
      $("#month option[value='${month}'").attr("selected","selected"); 
     
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
      $("#day option[value='${day}'").attr("selected","selected"); 
      
   }
});
    
</script>

<title>首页-会议室预定</title>
<div class="workingArea">
	<h1 class="label label-info" >会议室预定</h1>
	<br>
	<br>
	
    <div class="input-group">
      <!-- <input type="text" style="width:100px"  class="form-control" placeholder="startTime">
      <input type="text" style="width:100px"  class="form-control" placeholder="endTime"> -->
      <select id="year" game="0"></select><span>年</span>
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
    	<form id="form" action="" method="post">
    		<input type="hidden" id="startInput" name="startTime" value="">
    		<input type="hidden" id="endInput" name="endTime" value="">
    		<input type="hidden" id="yearInput" name="year" value="">
    		<input type="hidden" id="monthInput" name="month" value="">
    		<input type="hidden" id="dayInput" name="day" value="">
    		<input type="hidden" id="selectInput" name="selectStr" value="select">
    		<button id="selectButton" class="btn btn-primary" type="submit" path="fore_room_emptylist">
	       	      查询空会议室
	      	</button>
    	</form>
      
      
    </div>
    <br>
    
	<div class="listDataTableDiv">
		
			<table class="table table-striped table-bordered table-hover  table-condensed">
	           <thead>
					<tr class="success">
						<th>会议室ID</th>
						<th>空会议室</th>
						<th>容量</th>
						<th>设备</th>
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
						<td>
							<form action="" method="post" class="orderForm">
								<input type="hidden" class="startTimeInput" name="startTime" value="">
    							<input type="hidden" class="endTimeInput" name="endTime" value="">
								<button type="submit" path="fore_order_add?rid=${r.id }" class="btn btn-primary orderButton">预定会议室</button>
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
