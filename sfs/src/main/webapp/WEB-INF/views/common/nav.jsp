<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<script src="https://cdn.jsdelivr.net/sockjs/1/sockjs.min.js"></script> 
	<div style="height:10%;">
		 <nav class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme" id="layout-navbar">
      <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
        <ul class="navbar-nav flex-row align-items-center ms-auto">
          <!-- 유저정보 -->
          <li class="nav-item navbar-dropdown dropdown-user dropdown">
            <a
              class="nav-link dropdown-toggle hide-arrow p-0"
              href="#"
              data-bs-toggle="dropdown">
              <div class="avatar">
                <img src="${ contextPath }<c:out value='${ loginUser.profileURL }' default='/assets/img/default_profile.png' />" alt="Avatar" class="rounded-circle" />
              </div>
            </a>
            <ul class="dropdown-menu dropdown-menu-end">
              <li>
                <a class="dropdown-item mt-0" href="#">
                  <div class="d-flex align-items-center">
                    <div class="flex-shrink-0 me-2">
                      <div class="avatar">
                        <img src="${ contextPath }<c:out value='${ loginUser.profileURL }' default='/assets/img/default_profile.png' />" alt="Avatar" class="rounded-circle" />
                      </div>
                    </div>
                    <div class="flex-grow-1">
                      <h6 class="mb-0">${loginUser.memName}</h6>
                      <small class="text-muted">${loginUser.deptName}</small>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <div class="dropdown-divider my-1 mx-n2"></div>
              </li>
             
              <li>
                <div class="d-grid px-2 pt-2 pb-1">
                <form action="${contextPath}/member/logout.do" method="POST">
                  <button type="submit" class="btn btn-sm btn-danger d-flex" style="justify-self: center;">
                    <small class="align-middle">Logout</small>
                    <i class="ti ti-logout ms-2 ti-14px"></i>
                  </button>
                 </form>
                </div>
              </li>
            </ul>
          </li>
          <!--/ 유저정보 -->
        </ul>
      </div>
      
    </nav>
   </div>