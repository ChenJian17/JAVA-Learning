<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/fore/foreHeader.jsp"%>
<%@include file="../include/fore/foreNavigator.jsp"%>

<script>
function p(){
	alert("hzw shengge");
}

$(function(){
	$("#department option[value='${department}'").attr("selected","selected"); 
	
	$("#name").keyup(function(){
	     var page = "/study/checkName.jsp";
	     var value = $(this).val();
	  
	        $.post(
	            page,
	            {"name":value},
	            function(result){
	              $("#checkResult").html(result);
	            }
	        );
	 });
});
</script>

<title>会议室预定系统-后台管理</title>

<div  onload="p()" class="workingArea">
	<h1 class="label label-info" >开会人员管理 </h1>
	<br>
	<br>
	<form action="fore_meeting_person_search" method="post">
	       <select name="department" id="department">
	         <option selected="selected">销售部</option>
			 <option >人事部</option>
			 <option >财务部</option>
	       </select>
	       <button type="submit" class="btn btn-primary">查询部门成员</button>
	</form>
	<br>
	<form action="fore_meetingperson_selectAdded" method="post">
			<input type="hidden" name="oid" value="${sessionOid }">
	       <button type="submit" class="btn btn-primary">查询本次会议开会人员</button>
	</form>


	<div class="listDataTableDiv">
			<table class="table table-striped table-bordered table-hover  table-condensed">
				<thead>
					<tr class="success">
						<th>部门</th>
						<th>工号</th>
						<th>姓名</th>
						<th>性别</th>
						<th>电话</th>
						<th>邮件</th>
						<th>成员状态</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${us}" var="u">
					<tr>
						<td>${u.department }</td>
						<td>${u.id}</td>
						<td>${u.name }</td>
						<td>${u.sex }</td>
						<td>${u.phone }</td>
						<td>${u.email }</td>
						<td>
							<form method="post" id="editForm" action="fore_meetingPerson_add">
								<input type="hidden" name="oid" value="${sessionOid }">
								<input type="hidden" name="uid" value="${u.id }">
								<button type="submit" class="btn btn-primary">添加成员</button>
							</form>
	                    </td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		
	</div>
	
	<%-- <div class="pageDiv">
		<%@include file="../include/admin/adminPage.jsp" %>
	</div> --%>
	
	<div class="panel panel-warning addDiv">
      	<div class="panel-heading">手动添加成员到本次会议</div>
	    <div class="panel-body">
	            <form method="post" id="addForm" action="fore_meetingPerson_add">
	                <table class="addTable">
	                    <tr>
	                        <td>工号</td>
	                        
	                        <td>
	                        	<input type="hidden" name="oid" value="${sessionOid}">
	                        	<input  id="uid" name="uid" type="text" class="form-control">
	                       	</td>
	                    </tr>
	                    <tr class="submitTR">
	                        <td colspan="2" align="center">
	                        	
	                            <button type="submit" class="btn btn-success">添加成员</button>
	                        </td>
	                    </tr>
	                </table>
	            </form>
	      </div>
	 
    </div>
	
	
</div>

<%@include file="../include/admin/adminFooter.jsp"%>