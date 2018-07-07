<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>

<title>编辑会议室</title>

<script>
    $(function(){

        $("#editForm").submit(function(){
            if(!checkEmpty("name","会议室名称"))
                return false;
            if(!checkEmpty("capacity","会议室容量"))
                return false;
            if(!checkEmpty("device","会议室设备"))
                return false;

            return true;
        });
    });

</script>

<div class="workingArea">

	<ol class="breadcrumb">
		<li><a href="admin_room_list">所有会议室</a></li>
		<li class="active">${r.name}</li>
	</ol>

	<div class="panel panel-warning editDiv">
		<div class="panel-heading">编辑会议室</div>
		<div class="panel-body">
			<form method="post" id="editForm" action="admin_room_update">
				<table class="editTable">
					<tr>
						<td>会议室名称</td>
						<td><input  id="name" name="name" value="${r.name}" type="text" class="form-control"></td>
					</tr>
					<tr>
						<td>会议室容量</td>
						<td><input  id="capacity" name="capacity" value="${r.capacity}" type="text" class="form-control"></td>
					</tr>
					<tr>
						<td>会议室设备</td>
						<td><input  id="device" name="device" value="${r.device}" type="text" class="form-control"></td>
					</tr>
					
					<tr class="submitTR">
						<td colspan="2" align="center">
							<input type="hidden" name="id" value="${r.id}">
							<button type="submit" class="btn btn-success">提 交</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</div>
