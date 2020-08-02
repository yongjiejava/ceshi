<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>计算属性</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/vue.js"></script>
</head>
<body>
<div id="app">
	<input v-model="msg">
</div>
<script type="text/javascript">
	//初始化vue实例
	//vue属性：el:目标对象，data:初始化的数据
	var app = new Vue({
		el:'#app',
		data:{
			msg:''
		},
		watch:{
			msg(newVal,oldVal){
				console.log(newVal,oldVal);//发送ajax
			}
		}
	});
</script>
</body>
</html>