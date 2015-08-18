<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="pt" uri="/WEB-INF/pagetag"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>亿通世界</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="css/base-min.css?${JSCSS}" rel="stylesheet" type="text/css" />
<link href="admin/admin.css?${JSCSS}" rel="stylesheet" type="text/css" />
<link href="images/favicon.ico" rel="shortcut icon" type="image/x-icon">
</head>
<body>
<!-- jsp页面跳转、分页传递的参数 -->
<input type="hidden" id="params" value="${params}"> 