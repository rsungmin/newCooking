function sample6_execDaumPostcode() {
	new daum.Postcode(
			{
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 각 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var addr = ''; // 주소 변수
					var extraAddr = ''; // 참고항목 변수

					// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을
															// 경우
						addr = data.roadAddress;
					} else { // 사용자가 지번 주소를 선택했을 경우(J)
						addr = data.jibunAddress;
					}

					// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
					if (data.userSelectedType === 'R') {
						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraAddr += (extraAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraAddr !== '') {
							extraAddr = ' (' + extraAddr + ')';
						}
						// 조합된 참고항목을 해당 필드에 넣는다.
						document.getElementById("sample6_extraAddress").value = extraAddr;

					} else {
						document.getElementById("sample6_extraAddress").value = '';
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('sample6_postcode').value = data.zonecode;
					document.getElementById("sample6_address").value = addr;
					// 커서를 상세주소 필드로 이동한다.
					document.getElementById("sample6_detailAddress").focus();
				}
			}).open();
}

function checkId() {
	const member_idTag = document.joinform.member_id;
	var id = member_idTag.value;
	var checkText = document.getElementById("checkText");
	if(id==null || id==''){
		checkText.innerHTML = "";
	}else{
		var xhr = new XMLHttpRequest();
		console.log(id);
		xhr.open("GET", contextPath+"/member/CheckId.me?member_id="+id,true);
		xhr.responseText = '';
		xhr.send();
		console.log("들어옴1");
		xhr.onreadystatechange = function(){
			if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200){
				console.log(xhr.responseText.trim());
/*				console.log(responseText);*/
				console.log("들어옴2");
				if(xhr.responseText.trim()=="ok"){
					checkText.innerHTML = "사용할 수 있는 아이디입니다."
						console.log("들어옴3");
				}else{
					checkText.innerHTML = "중복된 아이디입니다."
						console.log("들어옴4");
				}
			}
		}
	}
}




function sendit(){
	console.log('sendit 함수 호출 ================');
	const joinform = document.joinform;
	if(joinform.member_id.value == "" || joinform.member_id.value == null){
		alert("아이디를 입력하세요.")
		joinform.member_id.focus();
		return false;
	}
	var checkText = document.getElementById("checkText");
	if(checkText.innerHTML != "사용할 수 있는 아이디입니다."){
		alert("아이디 중복검사를 먼저 해주세요.");
		return false;
	}
	if(joinform.member_pw.value == "" || joinform.member_pw.value == null){
		alert("비밀번호를 입력하세요.");
		joinform.member_pw.focus();
		return false;
	} else{
		// A~Z, a~z, 0~9, 특수문자들이 포함되어 있는 8글자인지 검사하는 정규식
		var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[~!@#$%^*-]).{8,}$/;
		// 한글이 포함되어 있는지 검사하는 정규식
		var hangle = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		if (!reg.test(joinform.member_pw.value)) {
			alert("비밀번호는 8자 이상, 숫자, 대문자, 소문자, 특수문자를 모두 포함해야 합니다.");
			return false;
			// 4개의 같은 문자가 연속되어 있는지 검사하는 정규식
		} else if (/(\w)\1\1\1/.test(joinform.member_pw.value)) {
			alert("비밀번호는 같은 문자를 4번 이상 사용할 수 없습니다.")
			return false;
			// 공백이 포함되어 있는지 검사하는 정규식
		} else if (joinform.member_pw.value.search(/\s/) != -1) {
			alert("비밀번호에 공백을 포함할 수 없습니다.");
			return false;
		} else if (hangle.test(joinform.member_pw.value)) {
			alert("비밀번호에 한글을 사용할 수 없습니다.");
			return false;
		}
	}
	if (joinform.member_name.value == "" || joinform.member_name.value == null) {
		alert("이름을 입력하세요.");
		joinform.member_name.focus();
		return false;
	}
	if (joinform.member_iddn.value == "" || joinform.member_iddn.value == null) {
		alert("주민번호를 입력하세요.");
		joinform.member_iddn.focus();
		return false;
	}
	if (joinform.member_email.value == "" || joinform.member_email.value == null) {
		alert("이메일을 입력하세요.");
		joinform.member_email.focus();
		return false;
	}
	if (joinform.member_phone.value == "" || joinform.member_phone.value == null) {
		alert("핸드폰 번호를 입력하세요.");
		joinform.member_phone.focus();
		return false;
	}
	if (joinform.member_postcode.value == "" || joinform.member_postcode.value == null) {
		alert("우편번호를 입력하세요.");
		joinform.findaddr.focus();
		return false;
	}
	if (joinform.member_addr.value == "" || joinform.member_addr.value == null) {
		alert("주소를 입력하세요.");
		joinform.findaddr.focus();
		return false;
	}
	if (joinform.detail_addr.value == "" || joinform.detail_addr.value == null) {
		alert("상세주소를 입력하세요.");
		joinform.detail_addr.focus();
		return false;
	}
	if (joinform.etc_addr.value == "" || joinform.etc_addr.value == null) {
		alert("참고항목을 입력하세요.");
		joinform.etc_addr.focus();
		return false;
	} else{
		alert("회원가입 성공입니다!!")
	}
	joinform.submit();
	
}



/*function ssnCheck(){
    /*
        0 0 1 0 1 1 - 3 0 6 8 5 1 8

    1. 각 자리에 2 3 4 5 6 7 8 9 2 3 4 5 를 곱하고 모두 더함(마지막 자리만 제외)

        0 0 1 0 1 1 - 3 0 6 8 5 1   8
        * * * * * *   * * * * * *
        2 3 4 5 6 7   8 9 2 3 4 5

        0 + 0 + 4 + 0 + 4 + 7 + 24 + 0 + 12 + 24 + 20 + 5 = 102

    2. 11로 나눈 나머지 값을 구함

        102 % 11 = 3
    
    3. 11에서 뺌

        11 - 3 = 8
        (만약 결과가 2자리이면 10으로 나눈 나머지 값을 구함)

    4. 주민등록번호의 마지막 자리와 결과가 같으면 유효한 주민등록번호
    */
    /*const ssn1 = document.getElementById('ssn1');
    const ssn2 = document.getElementById('ssn2');
    const isSsnCheck = document.getElementById('isSsnCheck');

    if(ssn1.value == '' || ssn2.value == ''){
        alert('주민등록번호를 입력하세요');
        ssn2.focus();
        return false;
    }

    const ssn = ssn1.value + ssn2.value;        // 001011 3068518
    const s1 = Number(ssn.substr(0, 1)) * 2;
    const s2 = Number(ssn.substr(1, 1)) * 3;
    const s3 = Number(ssn.substr(2, 1)) * 4;
    const s4 = Number(ssn.substr(3, 1)) * 5;
    const s5 = Number(ssn.substr(4, 1)) * 6;
    const s6 = Number(ssn.substr(5, 1)) * 7;
    const s7 = Number(ssn.substr(6, 1)) * 8;
    const s8 = Number(ssn.substr(7, 1)) * 9;
    const s9 = Number(ssn.substr(8, 1)) * 2;
    const s10 = Number(ssn.substr(9, 1)) * 3;
    const s11 = Number(ssn.substr(10, 1)) * 4;
    const s12 = Number(ssn.substr(11, 1)) * 5;
    const s13 = Number(ssn.substr(12, 1));

    let result = s1 + s2 + s3 + s4 + s5 + s6 + s7 + s8 + s9 + s10 + s11 + s12;
    result = result % 11;
    result = 11 - result;
    if(result >= 10){
        result = result % 10;
    }
    if(result == s13){
        isSsnCheck.value = 'y';
        alert('유효한 주민등록번호입니다.');
    }else{
        alert('유효하지 않은 주민등록번호입니다.');
    }
}*/
		

