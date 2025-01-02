<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!doctype html>

<html
  lang="en"
  class="light-style layout-navbar-fixed layout-menu-fixed layout-compact"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="${contextPath}/assets/"
  data-template="vertical-menu-template-no-customizer-starter"
  data-style="light">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Page 1 - Starter Kit | Vuexy - Bootstrap Admin Template</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="${contextPath}/assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&ampdisplay=swap"
      rel="stylesheet" />

    <link rel="stylesheet" href="${contextPath}/assets/vendor/fonts/tabler-icons.css" />
    <!-- <link rel="stylesheet" href="${contextPath}/assets/vendor/fonts/fontawesome.css" /> -->
    <!-- <link rel="stylesheet" href="${contextPath}/assets/vendor/fonts/flag-icons.css" /> -->

    <!-- Core CSS -->

    <link rel="stylesheet" href="${contextPath}/assets/vendor/css/rtl/core.css" />
    <link rel="stylesheet" href="${contextPath}/assets/vendor/css/rtl/theme-default.css" />

    <link rel="stylesheet" href="${contextPath}/assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="${contextPath}/assets/vendor/libs/node-waves/node-waves.css" />

    <link rel="stylesheet" href="${contextPath}/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="${contextPath}/assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->

    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="${contextPath}/assets/js/config.js"></script>
  <style>
    
  </style>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->
				<jsp:include page="/WEB-INF/views/common/header.jsp"/>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
  				<!-- nav 시작 -->
						<jsp:include page="/WEB-INF/views/common/nav.jsp" />
					<!-- nav 끝 -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              
              
              <div class="row">
								<div class="col-md-12">

									<div class="card mb-6">
										<!-- Account -->

										<form id="formAccountSettings" action="${ contextPath }/member/insert.do" method="post" enctype="multipart/form-data">
											<div class="card-body">
												<div style="text-align: center;">
													<img src="${contextPath}/assets/img/default_profile.png"
														alt="user-avatar"
														class="d-block w-px-140 h-px-140 rounded mx-auto"
														id="uploadedAvatar"
														style="margin-bottom: 20px; align-items: center; max-width: 120px; max-height: 120px; object-fit: cover;"
														height="120px" />
													<div class="button-wrapper">
														<label for="upload" class="btn btn-primary me-3 mb-4" tabindex="0">
														<span class="d-none d-sm-block">첨부파일 업로드</span> <i class="ti ti-upload d-block d-sm-none"></i> <input
															type="file" id="upload" class="account-file-input" hidden
															accept="image/*" name="uploadFile" />
														</label>
													</div>


												</div>
											</div>

											<script>
												
												$(document).ready(function() {
													// 파일 업로드 
													$('#upload').on("change", function(evt) {
														const file = evt.target.files[0]; // 사용자가 선택한 파일
														const memNo = $('#memNo').val();
										
														if (file) {
															// 선택된 파일 업로드전 미리보기
															const reader = new FileReader();
															reader.onload = function(r) {
																$('#uploadedAvatar').attr("src", r.target.result); // 이미지 변경
															};
															reader.readAsDataURL(file);
										
															let formData = new FormData();
															formData.append("uploadFile", file);
															
														}
													})
												})
											</script>

											<h5 class="pb-4 border-bottom mb-4"></h5>
											<div class="card-body pt-4">
												<div class="row">
													<div class="mb-4 col-md-6">
														<label for="memName" class="form-label">이름</label> <input
															class="form-control" type="text" id="memName"
															name="memName" autofocus required />
														<div id="nameError" class="text-danger mt-2"
															style="display: none;">이름은 한글 2자 이상이어야 합니다.</div>
													</div>
													<script>
														$(document).ready(
																		function() {
																			const nameInput = $('#memName');
																			const nameError = $('#nameError');

																			// 이름 유효성검사
																			function validateName() {
																				const nameValue = nameInput.val().trim();
																				const nameRegex = /^[가-힣]{2,}$/; // 한글만 허용, 최소 2자 이상
																				if (!nameRegex.test(nameValue)) {
																					nameError.text('이름은 한글 2자 이상이어야 합니다.').show();
																					return false;
																				}
																				nameError.hide();
																				return true;
																			}

																			// 실시간 입력 시 유효성 검사
																			nameInput.on('input',function() {
																								validateName();
																							});

																			// 폼 제출 시 유효성 검사
																			$('#formAccountSettings').on('submit',function(event) {
																								if (!validateName()) {
																									event.preventDefault(); 
																								}
																							});
																		});
				
														
													</script>

													<div class="mb-4 col-md-6">
														<label for="account" class="form-label">계좌번호</label>
														<div style="display: flex; align-items: center; gap: 10px;">
															<input class="form-control" type="text" name="account" id="account" placeholder="계좌번호 입력" required />
														</div>
														<small id="accountError"
															style="color: red; display: none;">계좌번호는 3-3-6
															형식이어야 합니다.</small>
													</div>


													<script>
														$(document).ready(function(){
																			$('#account').on('input',function() {
																								let input = $(this).val().replace(/[^0-9]/g,''); // 숫자 외 문자 제거
																								let formatted = '';

																								// 3-3-6 형식으로 포맷팅
																								if (input.length <= 3) {
																									formatted = input;
																								} else if (input.length <= 6) {
																									formatted = input.slice(0,3) + '-' + input.slice(3);
																								} else {
																									formatted = input.slice(0,3)+ '-'+ input.slice(3,6)+ '-' + input.slice(6,12);
																								}

																								$(this).val(formatted);

																								// 유효성 검사: 3-3-6 형식이 아닐 경우 경고 표시
																								const isValid = /^[0-9]{3}-[0-9]{3}-[0-9]{6}$/.test(formatted);
																								if (!isValid&& input.length > 0) {
																									$('#accountError').show();
																								} else {
																									$('#accountError').hide();
																								}
																							});
																		});
													</script>
													<div class="mb-4 col-md-6">
														<label for="memNo" class="form-label">사번</label> <input
															class="form-control" type="text" id="memNo" name="memNo" value="${ memNo }" readonly />
													</div>
													<div class="mb-4 col-md-6">
														<label for="deptCode" class="form-label">부서</label> <select
															id="deptCode" class="select form-select" name="deptCode">
															<option value="">선택</option>
															<option value="DP001">인사</option>
															<option value="DP002">개발</option>
															<option value="PD003">영업</option>
														</select>
													</div>
													<div class="mb-4 col-md-6">
														<label class="form-label" for="memPwd">비밀번호</label>
														<div class="input-group input-group-merge">
															<input type="text" id="memPwd" name="memPwd"value="111111" class="form-control" readonly/>
														</div>
													</div>
													<div class="mb-4 col-md-6">
														<label for="posCode" class="form-label">직급</label> <select
															id="posCode" class="select form-select" name="posCode">
															<option value="">선택</option>
															<option value="PO002">이사</option>
															<option value="PO003">수석</option>
															<option value="PO004">책임</option>
															<option value="PO005">사원</option>
														</select>
													</div>

													<script>
													$(document).ready(function() {
														$('#posCode').on("change",function(){
															
															/* if($('#posCode').val() === 'C1'){
																$('#salary').val('20000000');
															}else if(){
																
															} */
															console.log($('#posCode').val());
															switch($('#posCode').val()){
															case 'PO002' : $('#salary').val('6500000'); break;
															case 'PO003' : $('#salary').val('4800000'); break;
															case 'PO004' : $('#salary').val('3400000'); break;
															case 'PO005' : $('#salary').val('2800000'); break;
															}
															
														})
													})
	                        </script>


													<div class="mb-4 col-md-6">
														<label for="email" class="form-label">Email</label>
														<div
															style="display: flex; align-items: center; gap: 10px;">
															<!-- 이메일 입력 -->
															<input class="form-control" type="text" id="email"
																name="memEmail" placeholder="이메일 아이디를 입력하세요" required />
															<!-- 이메일 도메인 선택 -->
															<select class="form-select" style="max-width: 150px;"
																onchange="setEmailDomain(this.value)"
																title="이메일 도메인 주소 선택">
																<option value="custom">직접입력</option>
																<option value="naver.com">naver.com</option>
																<option value="gmail.com">gmail.com</option>
																<option value="hanmail.net">hanmail.net</option>
																<option value="nate.com">nate.com</option>
																<option value="kakao.com">kakao.com</option>
															</select>
														</div>
													</div>

													<script>
													    // 이메일 도메인 자동 적용 함수
													    function setEmailDomain(domain) {
													        const emailInput = document.getElementById('email');
													        const [localPart] = emailInput.value.split('@'); // '@' 기준으로 로컬 파트 분리
													
													        if (domain === 'custom') {
													            // 도메인 직접입력 선택 시 기존 값 유지
													            emailInput.value = localPart;
													            emailInput.focus();
													        } else {
													            // 선택된 도메인을 이메일에 추가
													            emailInput.value = localPart + '@' + domain;
													        }
													    }
													</script>

													<div class="mb-4 col-md-6">
														<label for="salary" class="form-label">급여</label> <input
															type="text" class="form-control" id="salary"
															name="salary" value="" required />
													</div>
													<div class="mb-4 col-md-6">
														<label class="hireDate2" for="country">입사날짜</label> <input
															class="form-control" type="date" id="hireDate"
															name="hireDate" placeholder="YYYY/MM/DD" required />
													</div>
													<div class="mb-4 col-md-6">
														<label for="address" class="form-label">주소</label> <input
															class="form-control" type="text" id="address"
															name="memAddr" placeholder="Address" required />
													</div>
													<div class="mb-4 col-md-6">
														<label for="memSSN" class="form-label">주민등록번호</label> <input
															class="form-control" type="text" id="memSSN"
															name="memSSN" placeholder="000000-0000000" required
															pattern="^\d{6}-\d{7}$" />
													</div>
													<div class="mb-4 col-md-6">
														<label for="phone" class="form-label">전화번호</label> <input
															class="form-control" type="text" id="phone" name="memPhone"
															placeholder="010-1111-2222" required
															pattern="^\d{3}-\d{4}-\d{4}$" />
														<div id="phoneError" class="text-danger mt-2"
															style="display: none;"></div>
													</div>

													<script>
													/* $(document).ready(function () {
													    $('#phone').on('blur', function () {
													        const phone = $(this).val();
													        if (phone) {
													            $.ajax({
													                type: 'POST',
													                url: '${contextPath}/member/checkPhone.do',
													                data: { phone: phone },
													                success: function (res) {
													                    if (res) {
													                        $('#phoneError').text('이미 등록된 휴대폰 번호입니다.').show();
													                    } else {
													                        $('#phoneError').hide();
													                    }
													                },
													                error: function () {
													                    $('#phoneError').text('중복 검사에 실패했습니다. 다시 시도해주세요.').show();
													                }
													            });
													        }
													    });
													}); */

													</script>

												</div>
												<div class="mt-2" style="justify-self: center;">
													<button type="submit" class="btn btn-primary me-3">등록하기</button>
													<a href="${contextPath}/member/dashbord.do"
														class="btn btn-label-secondary">취소하기</a>

												</div>
										</form>
									</div>
									<!-- /Account -->
								</div>

							</div>
              
              
              
              
              
              
              
              
              
              
              
            </div>
            <!-- / Content -->

            <!-- Footer -->
						<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
            <!-- / Footer -->

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>

      <!-- Drag Target Area To SlideIn Menu On Small Screens -->
      <div class="drag-target"></div>
    </div>
    <!-- / Layout wrapper -->

	<script>
    // 사이드바 처리
	document.addEventListener("DOMContentLoaded", function () {
  	
		const element = document.getElementById("signup");
		
  	document.getElementById("member").classList.add("open");
  	element.style.backgroundColor = "#958CF4";
  	element.style.color = "white";
  	element.classList.add("active");
  	
  	
	});
	</script>
	
	<script>
    document.addEventListener("DOMContentLoaded", function () {
        const salaryInput = document.getElementById("salary");

        // 숫자에 콤마를 추가하는 함수
        function formatNumberWithCommas(number) {
            if (!number) return "";
            return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }

        // 입력 값 실시간 포맷팅
        salaryInput.addEventListener("input", function () {
            const rawValue = salaryInput.value.replace(/,/g, ""); // 기존 콤마 제거
            if (!isNaN(rawValue)) {
                salaryInput.value = formatNumberWithCommas(rawValue); // 포맷팅된 값 삽입
            } else {
                salaryInput.value = ""; // 숫자가 아니면 초기화
            }
        });
    })
</script>













    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->

    <script src="${contextPath}/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="${contextPath}/assets/vendor/libs/popper/popper.js"></script>
    <script src="${contextPath}/assets/vendor/js/bootstrap.js"></script>
    <script src="${contextPath}/assets/vendor/libs/node-waves/node-waves.js"></script>
    <script src="${contextPath}/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="${contextPath}/assets/vendor/libs/hammer/hammer.js"></script>

    <script src="${contextPath}/assets/vendor/js/menu.js"></script>

    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="${contextPath}/assets/js/main.js"></script>

    <!-- Page JS -->
  </body>
</html>
