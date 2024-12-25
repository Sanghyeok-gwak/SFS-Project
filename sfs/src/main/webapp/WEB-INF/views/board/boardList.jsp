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
  data-assets-path="../../assets/"
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
    <link rel="icon" type="image/x-icon" href="../../assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&ampdisplay=swap"
      rel="stylesheet" />

    <link rel="stylesheet" href="../../assets/vendor/fonts/tabler-icons.css" />
    <!-- <link rel="stylesheet" href="../../assets/vendor/fonts/fontawesome.css" /> -->
    <!-- <link rel="stylesheet" href="../../assets/vendor/fonts/flag-icons.css" /> -->

    <!-- Core CSS -->

    <link rel="stylesheet" href="../../assets/vendor/css/rtl/core.css" />
    <link rel="stylesheet" href="../../assets/vendor/css/rtl/theme-default.css" />

    <link rel="stylesheet" href="../../assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../../assets/vendor/libs/node-waves/node-waves.css" />

    <link rel="stylesheet" href="../../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->

    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../assets/js/config.js"></script>
  <style>
    
  </style>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="index.html" class="app-brand-link">
              <span class="app-brand-logo demo">
                <img src="https://i.ibb.co/ZSMn21Q/global-services-12876203.png" style="width: 100%;">
              </span>
              <span class="app-brand-text demo menu-text fw-bold">SFS</span>
            </a>

            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto">
              <i class="ti menu-toggle-icon d-none d-xl-block align-middle"></i>
              <i class="ti ti-x d-block d-xl-none ti-md align-middle"></i>
            </a>
          </div>

          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">
            <!-- Page -->
            <li class="menu-item active">
              <a href="index.html" class="menu-link">
                <i class="menu-icon tf-icons ti ti-smart-home"></i>
                <div data-i18n="Page 1">Page 1</div>
              </a>
            </li>
            
          </ul>
        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->
            <div class="container-xxl flex-grow-1 container-p-y">
             <div class="container card py-5">
                <div class="d-flex align-items-center">
                  <div style="margin: 20px;">
                    <span class="text-primary" style="font-size: 20px;">
                      <c:choose>
                        <c:when test="${loginUser.deptCode eq 'S1'}">영업총괄팀 </c:when>
                        <c:when test="${loginUser.deptCode eq 'S2'}">인사팀 </c:when>
                        <c:when test="${loginUser.deptCode eq 'S3'}">지원팀 </c:when>
                        <c:when test="${loginUser.deptCode eq 'T1'}">남성의류팀 </c:when>
                        <c:when test="${loginUser.deptCode eq 'T2'}">여성의류팀 </c:when>
                        <c:when test="${loginUser.deptCode eq 'T3'}">식품팀 </c:when>
                        <c:when test="${loginUser.deptCode eq 'T4'}">스포츠팀 </c:when>
                        <c:when test="${loginUser.deptCode eq 'T5'}">뷰티팀 </c:when>
                        <c:when test="${loginUser.deptCode eq 'T6'}">명품팀 </c:when>
                        <c:when test="${loginUser.deptCode eq 'T7'}">문화센터팀 </c:when>
                        <c:when test="${loginUser.deptCode eq 'T8'}">디지털 및 가전팀 </c:when>
                        <c:otherwise>기타부서팀</c:otherwise>
                      </c:choose>
                      게시판
                    </span>                   
                  </div>

                  <div class="ms-auto d-flex">
                                     
                    <form id="search_form" action="${contextPath}/board/boardSearch.do" method="get" class="d-flex align-items-center">
									    <input type="hidden" name="page" value="1">
									    <div class="select">
                        <select id="searchSelect" class="custom-select select1 form-select form-select-lg" name="condition" style="width: 110px; height: 38px !important; min-height: 38px !important; font-size: 16px !important; padding-top: 0.3rem !important; padding-right: 1rem !important; padding-bottom: calc(38px - 1rem - 16px) !important; padding-left: 1rem !important; box-sizing: border-box;">
									        <option value="" <c:if test="${empty search.condition}">selected</c:if>>전체</option>
									        <option value="mem_name" <c:if test="${search.condition == 'mem_name'}">selected</c:if>>작성자</option>
									        <option value="board_title" <c:if test="${search.condition == 'board_title'}">selected</c:if>>제목</option>
									        <option value="board_content" <c:if test="${search.condition == 'board_content'}">selected</c:if>>내용</option>
									      </select>
									    </div>
									    <div class="text">
									      <input type="hidden" name="deptCode" value="${loginUser.deptCode}">
									      <input type="text" class="form-control" name="keyword" value="${search.keyword}">
									    </div>
									    <button type="submit" id="searchBtn" class="btn btn-primary">
									      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon icon-tabler icons-tabler-outline icon-tabler-search me-2">
									        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
									        <path d="M10 10m-7 0a7 7 0 1 0 14 0a7 7 0 1 0 -14 0"/>
									        <path d="M21 21l-6 -6"/>
									      </svg>
									      검색
									    </button>   
									  </form>
                    
                    
                    <c:if test="${not empty search}">
                      <script>
                        $(document).ready(function(){
                          $("#search_form select").val('${search.condition}');
                        });
                      </script>
                    </c:if>
                  </div>
                </div>    
                
                <div class="card-datatable table-responsive pt-3">
								  <table class="datatables-basic table text-center">
								    <thead>
								      <tr>
								        <c:choose>
								          <c:when test="${loginUser.posCode == 'C1' || loginUser.posCode == 'C2' || loginUser.posCode == 'C3' || loginUser.posCode == 'C4'}">
								            <th style="width: 5%;"><input type="checkbox" id="selectAll" /></th>
								            <th style="width: 10%;">번호</th>
								            <th style="width: 15%;">작성자</th>
								            <th style="width: 35%;">제목</th>
								            <th style="width: 15%;">작성일</th>
								            <th style="width: 10%;">조회수</th>
								            <th style="width: 10%;">댓글수</th>
								          </c:when>
								          <c:otherwise>
								            <th style="width: 10%;">번호</th>
								            <th style="width: 15%;">작성자</th>
								            <th style="width: 40%;">제목</th>
								            <th style="width: 15%;">작성일</th>
								            <th style="width: 10%;">조회수</th>
								            <th style="width: 10%;">댓글수</th>
								          </c:otherwise>
								        </c:choose>
								      </tr>
								    </thead>
								    <tbody>
								      <c:choose>
								        <c:when test="${empty list}">
								          <!-- 게시글이 없을 경우 -->
								          <tr>
								            <td colspan="6">조회된 게시글이 없습니다.</td>
								          </tr>
								        </c:when>
								        <c:otherwise>
								          <c:set var="count" value="1" />
								          <c:forEach var="board" items="${list}">
								            <!-- 역순 넘버링 계산 -->
								            <c:set var="reverseCount" value="${pi.listCount - (pi.currentPage - 1) * pi.boardLimit - (count - 1)}" />
								            <tr data-boardno="${board.boardNo}">
								              <c:choose>
								                <c:when test="${loginUser.posCode == 'C1' || loginUser.posCode == 'C2' || loginUser.posCode == 'C3' || loginUser.posCode == 'C4'}">
								                  <td><input type="checkbox" class="item-checkbox" /></td>
								                </c:when>
								              </c:choose>
								              <td>${reverseCount}</td> <!-- 역순 번호 -->
								              <td>${board.memName}</td>
								              <td class="title" style="cursor: pointer;" onclick='location.href = "${contextPath}/board/${loginUser.memNo eq board.memNo ? "boardDetail.do" : "increase.do"}?no=${board.boardNo}";'>
								                ${board.boardTitle}
								                <c:if test="${board.attachCount != 0}">
								                  <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon icon-tabler icons-tabler-outline icon-tabler-paperclip">
								                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
								                    <path d="M15 7l-6.5 6.5a1.5 1.5 0 0 0 3 3l6.5 -6.5a3 3 0 0 0 -6 -6l-6.5 6.5a4.5 4.5 0 0 0 9 9l6.5 -6.5" />
								                  </svg>
								                </c:if>
								              </td>
								              <td>${board.boardRegistDT}</td>
								              <td>${board.boardCount}</td>
								              <td>${board.replyCount}</td>
								            </tr>
								            <c:set var="count" value="${count + 1}" />
								          </c:forEach>
								        </c:otherwise>
								      </c:choose>
								    </tbody>
								  </table>
								</div>
                          	
	              <!-- 페이징 바 -->
								<div class="card-body">
								  <c:choose>
								    <c:when test="${ loginUser.posCode == 'C1' || loginUser.posCode == 'C2' || loginUser.posCode == 'C3' || loginUser.posCode == 'C4' }">
								      <div class="ms-5"> 
								        <button id="create" class="btn btn-danger" onclick="deleteSelectedPosts();" style="margin-left: -30px;">
								          <span class="ti-xs ti ti-trash me-2"></span>삭제
								        </button>      
								
								        <nav aria-label="Page navigation">
								          <ul class="pagination" id="paging_area">
								            <li class="page-item first"><a class="page-link" href="javascript:void(0);" onclick="goToPage(1);"><i class="ti ti-chevrons-left ti-sm"></i></a></li>
								            <li class="page-item prev ${pi.currentPage == 1 ? 'disabled' : ''}"><a class="page-link" href="javascript:void(0);" onclick="goToPage(${pi.currentPage - 1});"><i class="ti ti-chevron-left ti-sm"></i></a></li>
								            <c:forEach var="i" begin="${pi.startPage}" end="${pi.endPage}">
								              <li class="page-item ${i == pi.currentPage ? 'active' : ''}"><a class="page-link" href="javascript:void(0);" onclick="goToPage(${i});">${i}</a></li>
								            </c:forEach>
								            <li class="page-item next ${pi.currentPage == pi.maxPage ? 'disabled' : ''}"><a class="page-link" href="javascript:void(0);" onclick="goToPage(${pi.currentPage + 1});"><i class="ti ti-chevron-right ti-sm"></i></a></li>
								            <li class="page-item last"><a class="page-link" href="javascript:void(0);" onclick="goToPage(${pi.maxPage});"><i class="ti ti-chevrons-right ti-sm"></i></a></li>
								          </ul>
								        </nav>
								
								        <button id="create" class="btn btn-primary waves-effect waves-light" onclick="regist();">
								          <span class="ti-xs ti ti-edit me-2"></span>작성
								        </button>    
								      </div>
								    </c:when>
								    <c:otherwise>
								      <div class="d-flex justify-content-center">
								        <nav aria-label="Page navigation">
								          <ul class="pagination" id="paging_area">
								            <li class="page-item first"><a class="page-link" href="javascript:void(0);" onclick="goToPage(1);"><i class="ti ti-chevrons-left ti-sm"></i></a></li>
								            <li class="page-item prev ${pi.currentPage == 1 ? 'disabled' : ''}"><a class="page-link" href="javascript:void(0);" onclick="goToPage(${pi.currentPage - 1});"><i class="ti ti-chevron-left ti-sm"></i></a></li>
								            <c:forEach var="i" begin="${pi.startPage}" end="${pi.endPage}">
								              <li class="page-item ${i == pi.currentPage ? 'active' : ''}"><a class="page-link" href="javascript:void(0);" onclick="goToPage(${i});">${i}</a></li>
								            </c:forEach>
								            <li class="page-item next ${pi.currentPage == pi.maxPage ? 'disabled' : ''}"><a class="page-link" href="javascript:void(0);" onclick="goToPage(${pi.currentPage + 1});"><i class="ti ti-chevron-right ti-sm"></i></a></li>
								            <li class="page-item last"><a class="page-link" href="javascript:void(0);" onclick="goToPage(${pi.maxPage});"><i class="ti ti-chevrons-right ti-sm"></i></a></li>
								          </ul>
								        </nav>
								      </div>
								    </c:otherwise>
								  </c:choose>             
								</div>
	              
	            </div>
              
              
              
              
              
              
              
              
              
              
              
              
              
              
            </div>
            <!-- / Content -->

            <!-- Footer -->
            <footer class="content-footer footer bg-footer-theme">
              <div class="container-xxl">
                <div
                  class="footer-container d-flex align-items-center justify-content-between py-4 flex-md-row flex-column">
                  <div class="text-body">
                    ©
                    <script>
                      document.write(new Date().getFullYear());
                    </script>
                    , made with ❤️ by <a href="https://pixinvent.com" target="_blank" class="footer-link">Pixinvent</a>
                  </div>
                  <div class="d-none d-lg-inline-block">
                    <a
                      href="https://demos.pixinvent.com/vuexy-html-admin-template/documentation/"
                      target="_blank"
                      class="footer-link me-4"
                      >Documentation</a
                    >
                  </div>
                </div>
              </div>
            </footer>
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

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->

    <script src="../../assets/vendor/libs/jquery/jquery.js"></script>
    <script src="../../assets/vendor/libs/popper/popper.js"></script>
    <script src="../../assets/vendor/js/bootstrap.js"></script>
    <script src="../../assets/vendor/libs/node-waves/node-waves.js"></script>
    <script src="../../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="../../assets/vendor/libs/hammer/hammer.js"></script>

    <script src="../../assets/vendor/js/menu.js"></script>

    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="../../assets/js/main.js"></script>

    <!-- Page JS -->
  </body>
</html>
