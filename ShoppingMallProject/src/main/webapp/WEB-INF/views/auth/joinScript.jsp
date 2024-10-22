<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>
	document.addEventListener('DOMContentLoaded', function () {
        const form = document.getElementById('myForm');

        form.addEventListener('submit', function (event) {
            event.preventDefault();

            // 유효성 검사
            if (form.checkValidity() === false) {
                event.stopPropagation(); // 유효하지 않으면 이벤트 중지
            } else {
                // 유효한 경우의 동작 (예: 서버로 데이터 전송)
                console.log('Form is valid!');
            }
            
        
            // 중복검사도 필요
           
		

            const inputs = form.querySelectorAll('input');

            let isValid = true;

            inputs.forEach(input => {
                if (!input.checkValidity()) {
                    input.classList.add('is-invalid'); // 유효하지 않으면 클래스를 추가
                    isValid = false;
                } else {
                    input.classList.remove('is-invalid'); // 유효하지 않을 경우 클래스를 제거
                }
            });
            
         // 아이디 영문, 숫자만 가능하게
         
            
            // 비밀번호 일치 확인
            if(document.getElementById('pwd').value !== document.getElementById('pwd-check').value) {
            	isValid = false;
            	document.getElementById('pwd-check').classList.add('is-invalid'); // 유효하지 않으면 클래스를 추가
            } else {
            	document.getElementById('pwd-check').classList.remove('is-invalid'); // 유효하지 않으면 클래스를 추가
            }

            if (isValid) {
            	form.submit();
            }
        });
    });
    </script>
			<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
            }
        }).open();
    }
</script>