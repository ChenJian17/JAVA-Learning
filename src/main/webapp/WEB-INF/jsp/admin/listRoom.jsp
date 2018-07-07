<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>

<script>

</script>

<title>会议室预定系统-后台管理</title>

<div class="workingArea">
	<h1 class="label label-info" >会议室管理</h1>
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
					<th>编辑</th>
                    <th>删除</th>
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
                    <td><a deleteLink="true" href="admin_room_delete?id=${r.id}">
                             <span class="   glyphicon glyphicon-trash"></span></a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<div class="pageDiv">
		<%@include file="../include/admin/adminPage.jsp" %>
	</div>
	
	<div class="panel panel-warning addDiv">
      <div class="panel-heading">新增会议室</div>
      <div class="panel-body">
            <form method="post" id="addForm" action="admin_room_add">
                <table class="addTable">
                    <tr>
                        <td>会议室名称</td>
                        <td><input  id="name" name="name" type="text" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>会议室容量</td>
                        <td><input  id="capacity" name="capacity" type="text" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>会议室设备</td>
                        <td><input  id="device" name="device" type="text" class="form-control"></td>
                    </tr>
                    <tr class="submitTR">
                        <td colspan="2" align="center">
                            <button type="submit" class="btn btn-success">提 交</button>
                        </td>
                    </tr>
                </table>
            </form>
      </div>
    </div>
	
	
</div>

<%@include file="../include/admin/adminFooter.jsp"%>
