<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>钩子函数</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/vue.js"></script>
</head>
<body>
<div id="app">
	{{hello}}
</div>
<script type="text/javascript">
	//初始化vue实例
	//vue属性：el:目标对象，data:初始化的数据
	var app = new Vue({
		el:'#app',
		data:{
			hello:''
		},
		created(){
			this.hello="hello world";
			console.log(this);
		}
	});
</script>
</body>
</html>