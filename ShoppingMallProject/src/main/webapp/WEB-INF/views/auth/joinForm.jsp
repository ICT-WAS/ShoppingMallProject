<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container mt-3">
		<h3>회원가입</h3>

		<form method="post" id="myForm" novalidate>
			<div class="mb-3 mt-3">
				<label for="name" class="form-label"><span style="color: red;">*</span>이름:</label> <input type="text"
					class="form-control" id="name" name="name" required minlength=2 maxlength=10>
				<div class="invalid-feedback">이름은 2자 이상 10자 이하로 입력해주세요.</div>
			</div>
			<div class="mb-3 mt-3">
				<div class="row">
					<label for="id" class="form-label"><span style="color: red;">*</span>아이디:</label>
					<div class="col-sm-9">
						 <input type="text" class="form-control" id="id" name="id" required>
						 <div class="invalid-feedback">중복 확인을 체크해주세요.</div>
					</div>
					<div class="col-sm-3">
						<button type="button" class="btn btn-primary">중복확인</button>
					</div>
					
				</div>
			</div>
			<div class="mb-3">
				<label for="pwd" class="form-label"><span style="color: red;">*</span>비밀번호:</label> <input
					type="password" class="form-control" id="pwd" name="pwd" required minlength=6 maxlength=20>
				<div class="invalid-feedback">비밀번호는 6자 이상 20자 이하로 입력해주세요.</div>
			</div>
			<div class="mb-3">
				<label for="pwd" class="form-label"><span style="color: red;">*</span>비밀번호 확인:</label> <input
					type="password" class="form-control" id="pwd-check" name="pwd-check" required>
				<div class="valid-feedback">비밀번호가 일치합니다.</div>
				<div class="invalid-feedback">비밀번호가 일치하지 않습니다.</div>
			</div>
			<div class="mb-3 mt-3">
				<label for="email" class="form-label"><span style="color: red;">*</span>이메일:</label> <input
					type="text" pattern=".+@+." class="form-control" id="email" name="email" required>
				<div class="invalid-feedback">올바른 이메일 형식이 아닙니다.</div>
			</div>
			
			<div class="mb-3 mt-3">
				<label for="phone-number" class="form-label"><span style="color: red;">*</span>전화번호:</label> 
				<div class="row">
				  <div class="col">
				  <input type="text" class="form-control" id="phone-number1" name="phone-number1" required pattern="[0-9]{3}">
				</div>
				  <div class="col">
				  <input type="text" class="form-control" id="phone-number2" name="phone-number2" required pattern="[0-9]{4}">
				</div>
				<div class="col">
				<input type="text" class="form-control" id="phone-number3" name="phone-number3" required pattern="[0-9]{4}">
				</div>
			</div>
			<div class="row mb-3 mt-3">
			<label for="address" class="form-label">주소:</label>
			    <div class="col">
			      <input type="text" id="sample4_postcode" class="form-control" placeholder="우편번호" name="postcode">
			    </div>
			    <div class="col">
			      <input type="text" id="sample4_roadAddress" class="form-control" placeholder="도로명 주소" name="roadAddress">
			    </div>
			    <div class="col">
			      <input type="button" class="btn btn-primary" onclick="sample4_execDaumPostcode()" value="주소 검색">
			    </div>
			</div>
			<div class="row mb-3 mt-3">
				<div class="col">
			      <input type="text" id="sample4_detailAddress" class="form-control" placeholder="상세 주소" name="detailAddress">
			    </div>
			</div>
			<div class="form-check mb-3">
				<input class="form-check-input" type="checkbox" id="agree" name="agree" required>
				<label class="form-check-label"
					for="myCheck">이용 약관에 동의합니다.</label>
			</div>
			<button type="submit" class="btn btn-primary">가입</button>
		</form>
	</div>