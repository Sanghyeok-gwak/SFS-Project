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
  data-assets-path="${contextPath }/assets/"
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
    <link rel="icon" type="image/x-icon" href="${contextPath }/assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&ampdisplay=swap"
      rel="stylesheet" />

    <link rel="stylesheet" href="${contextPath }/assets/vendor/fonts/tabler-icons.css" />
    <!-- <link rel="stylesheet" href="../../assets/vendor/fonts/fontawesome.css" /> -->
    <!-- <link rel="stylesheet" href="../../assets/vendor/fonts/flag-icons.css" /> -->

    <!-- Core CSS -->

    <link rel="stylesheet" href="${contextPath }/assets/vendor/css/rtl/core.css" />
    <link rel="stylesheet" href="${contextPath }/assets/vendor/css/rtl/theme-default.css" />

    <link rel="stylesheet" href="${contextPath }/assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="${contextPath }/assets/vendor/libs/node-waves/node-waves.css" />

    <link rel="stylesheet" href="${contextPath }/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="${contextPath }/assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->

    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="${contextPath }/assets/js/config.js"></script>
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
              <a href="${ contextPath }/member/dashboard.do" class="menu-link">
                <i class="menu-icon tf-icons ti ti-smart-home"></i>
                <div data-i18n="Page 1">DashBoard</div>
              </a>
            </li>
            
            
            <li class="menu-item" id="member">
              <a href="#" class="menu-link menu-toggle" >
                <i class="menu-icon tf-icons ti ti-users"></i>
                <div data-i18n="인사관리">인사관리</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="#" class="menu-link" id="signup">
                    <div data-i18n="직원 등록">직원 등록</div> 
                  </a>
                </li>
                <li class="menu-item">
                  <a href="#" class="menu-link" id="employeelistview">
                    <div data-i18n="직원 조회">직원 조회</div> 
                  </a>
                </li>
                <li class="menu-item">
                  <a href="#" class="menu-link" id="salarypayment">
                    <div data-i18n="급여지급">급여지급</div>
                  </a>
                </li>
              </ul>
            </li>
            
            
            <li class="menu-item" id="boardSide" >
              <a href="#" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons ti ti-list-numbers"></i>
                <div data-i18n="게시판">게시판</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="#" id="boardNotice" class="menu-link">
                    <div data-i18n="공지사항">공지사항</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="#" id="boardTeam" class="menu-link">
                    <div data-i18n="팀 게시판">팀 게시판</div>
                  </a>
                </li>
              </ul>
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
              <h4 class="py-4 mb-6">대시보드</h4>
              <p>
                Sample page.<br />For more layout options, <a href="" target="_blank" class="fw-medium"></a> refer
                <a
                  href="https://demos.pixinvent.com/vuexy-html-admin-template/documentation//layouts.html"
                  target="_blank"
                  class="fw-medium"
                  >Layout docs</a
                >.
              </p>
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

    <script src="${contextPath }/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="${contextPath }/assets/vendor/libs/popper/popper.js"></script>
    <script src="${contextPath }/assets/vendor/js/bootstrap.js"></script>
    <script src="${contextPath }/assets/vendor/libs/node-waves/node-waves.js"></script>
    <script src="${contextPath }/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="${contextPath }/assets/vendor/libs/hammer/hammer.js"></script>

    <script src="${contextPath }/assets/vendor/js/menu.js"></script>

    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="${contextPath }/assets/js/main.js"></script>

    <!-- Page JS -->
  </body>
</html>
