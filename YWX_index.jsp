<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>欢迎使用易文献</title>
<!-- header -->
<div class="header_w3l">
    <div class="container">
        <nav class="navbar navbar-default">
            <div class="navbar-header">
                <h1><a  href="YWX_index.jsp">Welcome<span> easyPaper </span></a></h1>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="YWX_index.jsp" class="active">首页</a></li>
                    <li><a href="YWX_index.jsp">在线阅读</a></li>
                </ul>    
            </div>
        </nav>
    </div>
</div>
<!-- header -->
</head>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery.js"></script>
    <style>
        html{
            width:100%;
            overflow-x:hidden;
        }            
        .wrap{
            width: 100%;
            height: 100%;
            padding: -80px; 
            color: #FFFFFF;   
            font:  20px/1.5 Tahoma,Helvetica,Arial,'å®ä½',sans-serif;
            opacity: 0.8;
            background: linear-gradient(to bottom right,#50a3a2,#53e3a6);
            background: -webkit-linear-gradient(to bottom right,#50a3a2,#53e3a6);
        }  
        input[type=checkbox]{
            width: 16px;
            height: 16px;
            border-radius: 100%;
            position: relative;            
            -webkit-box-shadow: 0px 1px 3px rgba(0,0,0,0.5);
            -moz-box-shadow: 0px 1px 3px rgba(0,0,0,0.5);
            box-shadow: 0px 1px 3px rgba(0,0,0,0.5);
        }
         input[type=radio]{
            width: 16px;
            height: 16px;
            position: relative;            
        }
        input[type=checkbox]:checked + label {
            color:#F54785;
        }
        input[type=radio]:checked + label {
            color:#F54785;
        }
        .userCheckbox{
            position: relative;
            top:60px;
            left:300px;
            height: 23px;
        }
        .showResult{
            padding: 0;
            width: 350px;
            height: 35px;
            position: relative;
            top:140px;
            left:320px;
            font:  20px/1.5 Tahoma,Helvetica,Arial,'å®ä½',sans-serif;
        }
        .languageOption{
            color:#F54785;
            font:20px/1.5 Tahoma,Helvetica,Arial,'å®ä½',sans-serif;
        }
        .fileUpload{
            position: relative;
            top:80px;
            left:300px;
            height: 23px;
            width: 44%;
        }
        .uploadFileBox{
            width: 60px;
            height: 35px;
            position: relative;
            top:10px;
        }
        .uploadFileButton{
            width: 20px;
            height: 10px;
            position: relative;
            top:10px;
        }
    </style>
<body>    
<div class="wrap">
    <br>
    <div class="userCheckbox">
        <label>翻译样式：</label> 
        <input type="radio" name="languageRadio" value='doubleLanguage' checked/><label>双语版</label>
        <input name="languageRadio" type="radio" value="singleLanguage"/><label>译文版</label>  
        &emsp;  
        <input type="checkbox" checked/><label>翻译高亮</label> 
        &emsp; 
        <input type="button" value="预览" class="btn btn-default btn-success">
    <br>
    </div>
    <div class="input-group fileUpload">
        <input name="upfile" id="upfile" value="请选择要上传的文件" type="text" class="form-control uploadFileBox">
        <span id="scan" onclick="file.click()" class="input-group-addon uploadFileButton">浏览</span>
        <input type="file" id="file" name="file" style="display:none" onchange="changevalue()">
        &emsp; 
        <input type="button" value="上传 " class="btn btn-default btn-success">
    </div>
    <div>
        <input type="submit" value=" 翻&emsp;&emsp;&emsp;译    " class="showResult btn btn-default btn-success">
    </div>
</div>	
</body>
</html>