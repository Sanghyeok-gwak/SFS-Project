 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:if test="${not empty alertMsg}">
    <script>
       alert("${alertMsg}");
    </script>
</c:if>
 <!-- jQUERY 사용 -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
 
  <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
    <div class="app-brand demo">
      <a href="${ contextPath }/member/dashboard.do" class="app-brand-link">
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
            <a href="${contextPath }/member/signUpMember.do" class="menu-link" id="signup">
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