<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="js/jquery/2.0.0/jquery.min.js"></script>
<link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>
<title>会议室预定系统</title>
<style type="text/css">
div#loginDiv{
	height:100%;
	background-color:black;
}

div.simpleLogo{
	padding: 32px 0px;
}
img.loginBackgroundImg{
	display: block;
	margin: 0px auto;
}
bg{
width: 100%;
height: 100%;
top:0;
z-index: -1;
 position: absolute;
}
.bg img{
display: block;
outline: none;
border:0;height: 100%;
width: 100%;
}
div.loginSmallDiv{
	background-color: white;
	position: absolute;
	right: 180px;
	top: 100px;
	width: 350px;
	height: 400px;
	padding: 60px 25px 80px 25px;
}
div.content{
	position: absolute;
	left: 180px;
	top: 100px;
	padding: 60px 25px 80px 25px;
}
div.logo{
	position: absolute;
	left: 0px;
	top: 0px;
	padding: 0px;
	width:100%;
	
}
div.logo font{
font-size:40px;
}
div.login_acount_text{
	color: #3C3C3C;
	font-size: 16px;
	font-weight: bold;
}
div.loginInput{
	border: 1px solid #CBCBCB;
	margin: 20px 0px;
}
div.loginInput span.loginInputIcon{
	margin: 0px;
	background-color: #CBCBCB;
	width: 40px;
	height: 40px;
	display:inline-block;
}
span.loginInputIcon span.glyphicon{
	font-size: 22px;
	position: relative;
	left: 9px;
	top: 9px;
	color: #606060;
}
div.loginInput input{
	display: inline-block;
	border: 0px solid transparent;
	width: 244px;
	height: 30px;
	position: relative;
	left: 6px;
	top: 6px;
}
body{
	font-size: 12px;
	font-family: Arial;
}
a{
	color:#999;
}
a:hover{
	text-decoration:none;
	color: #C40000;
}
button.redButton{
	color: white;
	background-color: #0080FF;
	font-size: 14px;
	font-weight: bold;
}

div#footer{  
   clear: both;  
   text-align: center;   
   margin: 0px auto;  
   position: absolute;  
   bottom:0px;  
   width: 100%; 
   height:100px; 
}
.sizes{
font-size:30px;
color:white;
}     
.sizes2{
font-size:20px;
color:white;
}  
body,p{
margin: 0;
padding:0;
} 
</style>
</head>
<body>
<div id="all">
<div id="loginDiv">
<!-- 	<div class="simpleLogo">
		<img src="img/site/logo.jpg" height="60" width="80">
	</div> -->
	<div class="bg">
       <img src="https://gw.alicdn.com/tfs/TB1ittHRFXXXXcSXFXXXXXXXXXX-2880-1280.jpg"/>
    </div>
    <div class="logo" id="logo">
      <font color="white">会议室预订管理系统</font>>
      <hr style="background-color:black;height:4px;border:none;top:30px;width:100%;">
    </div> 
	<form action="judge_login" method="post">
		<div class="loginSmallDiv" id="loginSmallDiv">
			<div class="login_acount_text">账户登录</div>
			<div class="loginInput ">
				<span class="loginInputIcon ">
					<span class=" glyphicon glyphicon-user"></span>
				</span>
				<input type="text" placeholder="手机/会员名/邮箱" name="name" id="name">			
			</div>
			<div class="loginInput">
				<span class="loginInputIcon">
					<span class=" glyphicon glyphicon-lock"></span>
				</span>
				<input type="password" placeholder="密码" name="password" id="password">			
			</div>
			<div>
                   	用户<input type="radio" checked="checked" name="user" value="1">
                   	管理员<input type="radio" name="user" value="2">
			</div>
			<div style="margin-top:20px">
				<button type="submit" class="btn btn-block redButton">登录</button>
			</div>
		</div>	
	  </form>
	  <div class="content">
	     <p class="sizes">2018新型会议室预订管理系统
	     <br>
	                 正式上线
	     </p>
	     <p class="sizes2">
	                      专注研发12天，倾心打造时代产品
	       <br>
	       <br>
	                      值得信赖！！！
	     </p>
	  </div>
</div>

	  <footer style="background-color:black">
 	      <p align="center">
	        <br><br>
	        <pre style="background-color:black; border: 0"> 关于我们           法律声明及隐私政策             廉政举报               联系我们             加入我们           </pre>	 	
	      </p>
	      <p>
	      <br>
	      <br>
	        &nbsp&nbsp&nbsp&nbsp&nbsp© 2018-2018 scau.com 版权所有 ICP证粤：粤A2-20080101 
	        <br><br>
	        &nbsp&nbsp&nbsp&nbsp&nbsp© 2018-2018 广公网安备  0102030405060708号
	      </p>
	      <p align="center">
	        <br><br>
	  	 	   © 黄顺通、张永胜、陈健、赖志辉 版权所有<br /> 
		　　                 2018-07-15完成于华南农业大学
	      </p>
	  </footer>


</div>
</body>
</html>