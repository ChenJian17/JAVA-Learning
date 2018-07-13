<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/fore/foreHeader.jsp"%>
<%@include file="../include/fore/foreNavigator.jsp"%>
<title>编辑用户表</title>

<script>
    $(function(){

        $("#editForm").submit(function(){
            if(!checkEmpty("name","用户密码"))
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
	<!-- 	<li><a href="admin_user_list"></a></li> -->
		<li class="active">用户名称: ${u.name}</li>
	</ol>

	<div class="panel panel-warning editDiv">
		<div class="panel-heading">用户信息</div>
		<div class="panel-body">
			<form method="post" id="editForm" action="fore_user_update">
				<table class="editTable">
					<tr>
						<td>用户密码</td>
						<td><input  id="name" name="name" type="text" class="form-control"></td>
					</tr>
					<tr>
						<td>用户性别</td>
						<td><input  id="sex" name="sex" value="${u.sex}" type="text" class="form-control"></td>
					</tr>
					<tr>
						<td>用户类型</td>
						<td><input  id="userType" name="userType" value="${u.userType}" type="text" class="form-control"></td>
					</tr>
					<tr>
						<td>用户部门</td>
						<td><input  id="department" name="department" value="${u.department}" type="text" class="form-control"></td>
					</tr>
					<tr>
						<td>用户电话</td>
						<td><input  id="phone" name="phone" value="${u.phone}" type="text" class="form-control"></td>
					</tr>
					<tr>
						<td>用户邮件</td>
						<td><input  id="email" name="email" value="${u.email}" type="text" class="form-control"></td>
					</tr>
					<tr class="submitTR">
						<td colspan="2" align="center">
							<input type="hidden" name="id" value="${u.id}">
							<button id="submitButton" type="submit" class="btn btn-success">更改信息</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</div>
