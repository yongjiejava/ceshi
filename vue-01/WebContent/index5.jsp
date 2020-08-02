<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>v-model复选框</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/vue.js"></script>
</head>
<body>
<div id="app">
	<input type="checkbox" value="java" v-model="language">java
	<input type="checkbox" value="php"  v-model="language">php
	<input type="checkbox" value="ios"  v-model="language">ios
	<h1>你选择的语言{{language.join(',')}}</h1>  
</div>
<script type="text/javascript">
	//初始化vue实例
	//vue属性：el:目标对象，data:初始化的数据
	var app = new Vue({
		el:'#app',
		data:{
			language:[]
		}
	});
</script>
</body>
</html>