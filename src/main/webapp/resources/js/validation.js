/**
 * 회원가입 유효성 검사
 */
$(document).ready(function(){
	/* 정규식 */
		var email_regex = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; 
		var nick_regex = /^[a-zA-Z가-힣0-9_]{2,10}$/;
		var pass_regex =  /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
		var phone_regex = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
	/* 정규식 끝 */
		
		var IDForm = $("#ID");
		var passwordForm = $("#password");
		var passcheckForm = $("#passcheck");
		var nickForm = $("#nick");	
		var phoneForm = $("#phone");
		
	/* 회원가입 유효성 검사 */
		IDForm.focus(function(){
			IDForm.css("border","1px solid black");
		})
		passwordForm.focus(function(){
			passwordForm.css("border","1px solid black");
		})
		passcheckForm.focus(function(){
			passcheckForm.css("border","1px solid black");
		})
		nickForm.focus(function(){
			nickForm.css("border","1px solid black");
		})
		phoneForm.focus(function(){
			phoneForm.css("border","1px solid black");
		}) 
		
		IDForm.blur(function(){
			var ID = $("#ID").val();
			if(ID == null || ID == ""){
				$("#ID").attr("placeholder","e-mail양식에 맞게 입력해주세요.");
				IDForm.css("border","1px solid red");
				return;
			}
			else if(!email_regex.test(ID)){
				$("#ID").attr("placeholder","이메일 양식에 맞지 않습니다.");
				IDForm.css("border","1px solid red");
				return;
			}else{
				IDForm.css("border","1px solid #51ba4e");
			}
		})
		passwordForm.blur(function(){
			var password = $("#password").val();
			if(password == null || password == ""){
				passwordForm.css("border","1px solid red");
				return;
			}
			else if(!pass_regex.test(password)){
				passwordForm.css("border","1px solid red");
				return;
			}else{
				passwordForm.css("border","1px solid #51ba4e");
			}		
		})
		passcheckForm.blur(function(){
			var password = $("#password").val();
			var passcheck = $("#passcheck").val();

			if(passcheck == null || password == ""){
				$("#passcheck").attr("placeholder","비밀번호가 일치하지 않습니다.");
				passcheckForm.css("border","1px solid red");
				return;
			}
			else if(password != passcheck){
				$("#passcheck").attr("placeholder","비밀번호가 일치하지 않습니다.");
				passcheckForm.css("border","1px solid red");
				return;
			}else{
				passcheckForm.css("border","1px solid #51ba4e");
			}
		})
		nickForm.blur(function(){
			var nick = $("#nick").val();
			
			if(nick == null || nick == ""){
				nickForm.css("border","1px solid red");
				return;
			}
			else if(!nick_regex.test(nick)){
				nickForm.css("border","1px solid red");
				return;
			} else{
				nickForm.css("border","1px solid #51ba4e");
			}
		})
		phoneForm.blur(function(){
			var phone = $("#phone").val();
			
			if(phone == null || phone == ""){
				$("#phone_alam").html("전화번호를 입력해주세요.");
				phoneForm.css("border","1px solid red");
				return;
			}
			else if(!phone_regex.test(phone)){
				$("#phone_alam").html("전화번호 양식에 맞지 않습니다.");
				phoneForm.css("border","1px solid red");
				return;
			}else{
				phoneForm.css("border","1px solid #51ba4e");
			}
		}) 
		
		$("#regist_member").click(function(){
			var ID = $("#ID").val();
			var password = $("#password").val();
			var passcheck = $("#passcheck").val();
			var nick = $("#nick").val();
			var phone = $("#phone").val();
			var post_code = $("#post_code").val();
			var address1 = $("#address1").val();
			var address2 = $("#address2").val();
			
			if(ID == null || ID == ""){
				alert("가입 양식을 다시 확인해주세요.");
				return;
			}
			if(!email_regex.test(ID)){
				alert("가입 양식을 다시 확인해주세요.");
				return;
			}
			if(password == null || password == ""){
				alert("가입 양식을 다시 확인해주세요.");
				return;
			}
			if(!pass_regex.test(password)){
				alert("가입 양식을 다시 확인해주세요.");
				return;
			}
			if(passcheck == null || password == ""){
				alert("가입 양식을 다시 확인해주세요.");
				return;
			}
			if(password != passcheck){
				alert("가입 양식을 다시 확인해주세요.");
				return;
			}
			if(nick == null || nick == ""){
				alert("가입 양식을 다시 확인해주세요.");
				return;
			}
			if(!nick_regex.test(nick)){
				alert("가입 양식을 다시 확인해주세요.");
				return;
			}
			if(phone == null || phone == ""){
				alert("가입 양식을 다시 확인해주세요.");
				return;
			}
			if(!phone_regex.test(phone)){
				alert("가입 양식을 다시 확인해주세요.");
				return;
			}
			if(post_code == null || post_code == ""){
				alert("주소를 다시 입력해주세요.");
				return;
			}
			if(address1 == null || address1 == ""){
				alert("주소를 다시 입력해주세요.");
				return;
			}
			if(address2 == null || address2 == ""){
				alert("주소를 다시 입력해주세요.");
				return;
			}
			
			var regist_form = $("#regist_form");
			regist_form.submit();
		})
	/* 회원가입 유효성 검사 끝 */

		
})