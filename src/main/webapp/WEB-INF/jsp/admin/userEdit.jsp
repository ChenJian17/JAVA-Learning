<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>

<title>编辑用户表</title>

<script>
    $(function(){

        $("#editForm").submit(function(){
            if(!checkEmpty("name","用户名"))
                return false;
            if(!checkEmpty("sex","用户性别"))
                return false;
            if(!checkEmpty("userType","用户类型"))
                return false;
            if(!checkEmpty("department","用户部门"))
                return false;
            if(!checkEmpty("phone","用户电话"))
                return false;
            if(!checkEmpty("email","用户邮件"))
                return false;
            
            return true;
        });
    });

</script>

<div class="workingArea">

	<ol class="breadcrumb">
		<li><a href="admin_user_list">所有用户</a></li>
		<li class="active">${r.name}</li>
	</ol>

	<div class="panel panel-warning editDiv">
		<div class="panel-heading">编辑用户表</div>
		<div class="panel-body">
			<form method="post" id="editForm" action="admin_user_update">
				<table class="editTable">
					<tr>
						<td>用户名称</td>
						<td><input  id="name" name="name" value="${r.name}" type="text" class="form-control"></td>
					</tr>
					<tr>
						<td>用户性别</td>
						<td><input  id="sex" name="sex" value="${r.sex}" type="text" class="form-control"></td>
					</tr>
					<tr>
						<td>用户类型</td>
						<td><input  id="userType" name="userType" value="${r.userType}" type="text" class="form-control"></td>
					</tr>
					<tr>
						<td>用户部门</td>
						<td><input  id="department" name="department" value="${r.department}" type="text" class="form-control"></td>
					</tr>
					<tr>
						<td>用户电话</td>
						<td><input  id="phone" name="phone" value="${r.phone}" type="text" class="form-control"></td>
					</tr>
					<tr>
						<td>用户邮件</td>
						<td><input  id="email" name="email" value="${r.email}" type="text" class="form-control"></td>
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
