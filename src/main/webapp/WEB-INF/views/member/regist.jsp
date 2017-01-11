<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/assa.css" />
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function daumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('post_code').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('address1').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('address2').focus();
            }
        }).open();
    }
</script>
</head>
<body>
<div class="container">
	<div class="text-center">
		<h3>Assa</h3>
	</div>
	
	<form method="post" action="/member/regist">
	
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
	    <input id="ID" type="text" class="form-control input-lg" name="ID" placeholder="아이디(이메일)">
	  </div><div class="col-xs-3"></div><br/>
	  
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
	    <input id="password" type="password" class="form-control input-lg" name="password" placeholder="비밀번호">
	  </div><div class="col-xs-3"></div><br/>
	  
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"><i class="glyphicon glyphicon-ok-circle"></i></span>
	    <input id="passcheck" type="password" class="form-control input-lg" name="passcheck" placeholder="비밀번호 확인">
	  </div><div class="col-xs-3"></div><br/>
	  
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
	    <input id="nick" type="text" class="form-control input-lg" name="nick" placeholder="닉네임">
	  </div><div class="col-xs-3"></div><br/>
	  
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
	    <input id="phone" type="text" class="form-control input-lg" name="phone" placeholder="전화번호">
	  </div><div class="col-xs-3"></div><br/>
	  
	  <div class="col-xs-3"></div>	 
	  <div class="input-group col-xs-6">
	  	<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
	  	<button type="button" class="btn btn-default btn-lg input-group" onclick="daumPostcode()">우편번호 찾기</button>
	    <input id="post_code" type="text" class="form-control input-lg" name="post_code" placeholder="우편번호">
	    
	  </div>
	  
	  <div class="col-xs-3"></div>
	  <div class="input-group col-xs-6">
	    <input id="address1" type="text" class="form-control input-lg" name="address1" placeholder="주소">
	    <input id="address2" type="text" class="form-control input-lg" name="address2" placeholder="상세주소">
	  </div><div class="col-xs-3"></div><br/>
	  
	  <div class="col-xs-3"></div>
	  <button type="submit" class="btn btn-primary btn-lg col-xs-6">회원등록</button>
	</form>
</div>
</body>
</html>
