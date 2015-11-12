$(document).ready(function() {
		var ok1 = false;
		var ok2 = false;
		var ok3 = false;
		var ok4 = false;
		var ok5 = false;

		// 验证用户名
		$("#register").click(function() {
			var name = $("#omName").val();
			if (name == null || name == "")
				;
			else {
				ok1 = true;
			}

		

		//验证账单
		
			var rag = /[0-9]+/;
			var w = $("#bank").val();
			if (w == "" || rag.test(w)) {
				ok2 = true;
			}
	

		//验证密码
		
			
			var reg = /[a-zA-Z0-9_]/;
			var v = $("#password1").val();
			if (v.length >= 6 && v.length <= 20 && reg.test(v)) {
				ok3 = true;
			}
		
	
		//验证确认密码
		
			if(ok1==true && ok2==true && ok3==true){
			var pass1 = $("#password1").val();
			var pass2 = $("#password2").val();
			if (pass1 == pass2) {
				ok4 = true;
			}	}
	

		//集体人数
		
			var rbg = /[0-9]+/;
			var e = $("#num").val();
			if (rbg.test(e)) {
				ok5 = true;
			}
	

		
			if (ok1 == false) {
				alert("名字不能为空");
				return false;
			} else {
				if (ok2 == false) {
					alert("账单只能含有数字");
					return false;
				} else {
					if (ok3 == false) {
						alert("密码要能大于6位小于20位且只能含有字母、数字、下划线");
						return false;
					} else {
						if (ok4 == false) {
							alert("请再次确认密码");
							return false;
						} else {
							if (ok5 == false) {
								alert("请输入集体人数");
								return false;
							} else {
								$("formcheck").submit();

							}
						}
					}
				}
			}
		});

	});



//这个函数是必须的，因为在area.js里每次更改地址时会调用此函数  
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

