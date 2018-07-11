<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	
<!-- BEGIN CONTAINER -->
    <div class="page-container row-fluid">
        <!-- BEGIN SIDEBAR -->
        <div class="page-sidebar nav-collapse collapse">
            <!-- Begin SIDEBAR MENU -->
            <!-- BEGIN SIDEBAR MENU -->
            <ul class="page-sidebar-menu">
                <li>
                    <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                    <div class="sidebar-toggler hidden-phone"></div>
                    <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                </li>
                <li class="start">
                    <a href="">
                        <i class="icon-reorder"></i>
                        <span class="title">菜单</span>
                    </a>
                </li>
                
                <li>
                    <a href="">
                        <i class="icon-home"></i>
                        <span class="title">预定会议室</span>
                    </a>
                </li>
                <!-- <li>
                    <a href="">
                        <i class="icon-bullhorn"></i>
                        <span class="title">查空会议室</span>
                    </a>
                </li> -->
                <li>
                    <a href="">
                        <i class="icon-book"></i>
                        <span class="title">个人预定表</span>
                    </a>
                </li>
                
                <li>
                    <a href="javascript:;">
                        <i class="icon-credit-card"></i>
                        <span class="title">关于我们</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="">联系我们</a>
                            <a href="">公司介绍</a>
                        </li>
                    </ul>
                </li>
                
            </ul>
            
            <!-- END SIDEBAR MENU -->
        </div>
        <!-- END SIDEBAR -->
        <!-- BEGIN PAGE -->
        <%-- <div class="page-content">
            <%@include file="../../fore/userLoginSuccess.jsp"%>
        </div> --%>
        <!-- end PAGE -->
        <!-- BEGIN PAGE -->
        <div class="page-content">
            <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
            <div id="portlet-config" class="modal hide">
                <div class="modal-header">
                    <button data-dismiss="modal" class="close" type="button"></button>
                    <h3>Widget Settings</h3>
                </div>
                <div class="modal-body">
                    <p>Here will be a configuration form</p>
                </div>
            </div>
            <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
            <div class="container-fluid">
                <!-- BEGIN PAGE HEADER-->
                <div class="row-fluid">
                    <div class="span12">
                        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                        <!-- <h3 class="page-title">
                        
                        	

                            自定义模块 <small></small>

                        </h3> -->
                        <%@include file="../../fore/userLoginSuccess.jsp"%>
                        
                    </div>
                </div>
                <!-- END PAGE HEADER-->
                
            </div>
            <!-- END PAGE CONTAINER-->
        </div>
        <!-- end PAGE -->
        
        
        <!-- **** -->
        <!-- **** -->
        <!-- === -->
        <div id="static" class="modal hide fade" tabindex="-1" data-backdrop="static" data-keyboard="false">
            
        </div>
        <!-- === -->
    </div>
    <!-- END CONTAINER -->