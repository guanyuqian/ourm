$(document).ready(function() {	
		// 验证用户名
		$("#register").click(function() {
			if ($("#omName").val() == ""){
				alert("名字不能为空");
				return false;
			}	
		//验证账单		
			var rag = /[0-9]+/;
			var w = $("#bank").val();
			if ((w == "" || rag.test(w))==false) {
				alert("账戶只能含有数字");
				return false;
			}
		//验证密码		
			rag = /[a-zA-Z0-9_]/;
			var v = $("#password1").val();
			if (v.length < 6 || v.length > 20 || (rag.test(v))==false) {
				alert("密码要能大于6位小于20位且只能含有字母、数字、下划线");
				return false;
			}
		//验证确认密码
			if (($("#password2").val() ==  $("#password1").val())==false) {
				alert("请再次确认密码");
				return false;
			}	
		//集体人数	
			rag = /[0-9]+/;
			var num=$("#num").val(),num1=$("#num1").val(),num2=$("#num2").val(),num3=$("#num3").val();

			if ((parseInt(num)==num)==false)  {
				alert("请正确填写集体人数");
				return false;
			} 
			if ((parseInt(num1)==num1)==false)  {
				alert("请正确填写超级管理员人数");
				return false;
			} 
			if ((parseInt(num2)==num2)==false&&(num2=="")==false)  {
				alert("请正确填写财务管理员人数");
				return false;
			}else if(num2==""){
				num2="0";
			}
			if ((parseInt(num3)==num3)==false&&(num3=="")==false)  {
				alert("请正确填写管理员人数");
				return false;
			}else if(rag.test(num3)==""){
				num3="0";
			}
		    
			
			var int_k=parseInt(num),int_k1=parseInt(num1),int_k2=parseInt(num2),int_k3=parseInt(num3);
			if(int_k<int_k2+int_k3+int_k1){
				alert("集体人数要大于等于其他人数之和");
				return false;
			}
			$("formcheck").submit();
		
			
		});

	});



/*//这个函数是必须的，因为在area.js里每次更改地址时会调用此函数  
function promptinfo() {
	var address = document.getElementById('address');
	var s1 = document.getElementById('s1');
	var s2 = document.getElementById('s2');
	var town1 = document.getElementById('town1');
	if (s1.value != "请选择省" && s2.value == '请选择市') {//若只选择了第一项，则地址就为某某省  
		address.value = s1.value;
	}
	if (s1.value != "请选择省" && s2.value != '请选择市') {//若只选择了前两项省和市，则地址就只显示"省|市"  
		address.value = s1.value + "|" + s2.value;
	}
	if (s1.value == "请选择省") {//若什么都不选，则隐藏域地址为空串  
		address.value = "";
	}
}
//获取区县的值（若不写这个触发函数，一直获取不到第三项区县的值，一直是默认值“请选择区县”）  
function getTown() {
	var address = document.getElementById('address');
	var s1 = document.getElementById('s1').value;
	var s2 = document.getElementById('s2').value;
	var s3 = document.getElementById('s3').value;
	var town1 = document.getElementById('town1').value;
	town1 = s3;
	if (town1 == "请选择区县") {
		address.value = s1 + "|" + s2;
	} else {
		address.value = s1 + "|" + s2 + "|" + town1;
	}

}

*/