<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript">
	function myChange123(alt){
		//alert(alt);直接输出slt（元素、标签，节点），是select元素（下拉框）
		//select可以获取选项数组
		/* optArray=alt.options;
		for(var i=0;i<optArray.length;i++){
			//每一个option，应该有value（值）和text（中间的文本）
			alert(optArray[i].text); */
		//alert(alt.selectedIndex);
		optText = alt.options[alt.selectedIndex].text;
		//alert(optText);
		find(optText);
		}
		
		
		function find(provinceName){
		var req = new XMLHttpRequest();
		req.onreadystatechange = function(){
			if(req.readyState == 4){
				var reValue = req.responseText;
				//alert(reValue);
				var reArray = reValue.split("-");
				//alert(reArray.length);
				//先获取到显示城市的下拉框
			    var citySel66 = document.getElementById("citySelectId789");
				//在添加本次获取到的城市之前，要将城市下拉框清空了
				var beforeCity = citySel66.options;
				var a=beforeCity.length;
				 for(i = 0;i<a;i++){
					//删除的时候，后面的会往前面窜，所以要不断地删除[0]
					//删除的时候beforeCity.length会不断的发生变化，会导致最后的两个删不掉
					//alert("要删除的城市"+beforeCity[0].text);
					citySel66.removeChild(beforeCity[0]);
				}  
				/* while(beforeCity.length > 0){
					//alert("要删除的城市"+beforeCity[0].text);
					citySel66.removeChild(boforeCity[0]);
				} */ 
				for(var i = 0;i<reArray.length;i++){
					var newopt888 = document.createElement("option");
					newopt888.text = reArray[i];
					citySel66.appendChild(newopt888); 
			}
			}
		};
		//设置监听器，监听函数
		 req.open("post","doAjax",true);
		//设置本次请求传递数据的方式
		req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		//key = value,到了servlet中可以通过key获取到value
		req.send("province456="+provinceName); 
	}
	function findload(){
		var first = document.getElementById("proID123").options[0].text;
		find(first);
		}
</script>
</head>
<body onload = "findload()">
	省
	<select id="proID123" onchange="myChange123(this)">
		<option>黑龙江</option>
		<option>吉林</option>
		<option>辽宁</option>
		<option>河北</option>
	</select><br/>
	市
	<select id="citySelectId789">
		
	</select><br/>
	（根据选择的省的不同，市要动态的变化）
</body>
</html>