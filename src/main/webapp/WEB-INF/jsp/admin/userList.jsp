<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>

<script>

</script>

<title>会议室预定系统-后台管理</title>

<div class="workingArea">
	<h1 class="label label-info" >用户管理</h1>
	<br>
	<br>
	
	<div class="listDataTableDiv">
		<table class="table table-striped table-bordered table-hover  table-condensed">
			<thead>
				<tr class="success">
					<th>工号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>类型</th>
					<th>部门</th>
					<th>电话</th>
					<th>邮件</th>
					<th>编辑</th>
                    <th>删除</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${rs}" var="r">
				
				<tr>
					<td>${r.id}</td>
					<td>${r.name }</td>
					<td>${r.sex }</td>
					<td>${r.userType }</td>
					<td>${r.department }</td>
					<td>${r.phone }</td>
					<td>${r.email }</td>
					<td><a href="admin_user_edit?id=${r.id}">
					         <span class="glyphicon glyphicon-edit"></span></a></td>
                    <td><a deleteLink="true" href="admin_user_delete?id=${r.id}">
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
      <div class="panel-heading">新增用户</div>
      <div class="panel-body">
            <form method="post" id="addForm" action="admin_user_add">
                <table class="addTable">
                    <tr>
                        <td>用户姓名</td>
                        <td><input  id="name" name="name" type="text" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>用户密码</td>
                        <td><input  id="password" name="password" type="text" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>用户类型</td>
                        <td><input  id="userType" name="userType" type="text" class="form-control"></td>
                    </tr>
					<tr>
                        <td>用户部门</td>
                        <td><input  id="department" name="department" type="text" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>用户电话</td>
                        <td><input  id="phone" name="phone" type="text" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>用户邮件</td>
                        <td><input  id="email" name="email" type="text" class="form-control"></td>
                    </tr>
					<tr>
                        <td>用户性别</td>
                        <td><input  id="sex" name="sex" type="text" class="form-control"></td>
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
