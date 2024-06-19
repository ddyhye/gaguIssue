<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<div class="sidebar-wrapper" data-layout="stroke-svg">
          <div>
            <div class="logo-wrapper"><a href="index.go"><img class="img-fluid" src="/assets/images/logo/logo_light.png" alt=""></a>
              <div class="back-btn"><i class="fa fa-angle-left"></i></div>
              <div class="toggle-sidebar">
                <svg class="stroke-icon sidebar-toggle status_toggle middle">
                  <use href="/assets/svg/icon-sprite.svg#toggle-icon"></use>
                </svg>
                <svg class="fill-icon sidebar-toggle status_toggle middle">
                  <use href="/assets/svg/icon-sprite.svg#fill-toggle-icon"></use>
                </svg>
              </div>
            </div>
            <div class="logo-icon-wrapper"><a href="index.go"><img class="img-fluid" src="/assets/images/logo/logo-icon.png" alt=""></a></div>
            <nav class="sidebar-main">
              <div class="left-arrow" id="left-arrow"><i data-feather="arrow-left"></i></div>
              <div id="sidebar-menu">
                <ul class="sidebar-links" id="simple-bar">
                  <li class="back-btn"><a href="index.go"><img class="img-fluid" src="/assets/images/logo/logo-icon.png" alt=""></a>
                    <div class="mobile-back text-end"><span>Back</span><i class="fa fa-angle-right ps-2" aria-hidden="true"></i></div>
                  </li>
                  <li class="pin-title sidebar-main-title">
                    <div> 
                      <h6>Pinned</h6>
                    </div>
                  </li>
                  
                  
                  <!-- do : 대쉬보드 -->              
                  <li class="sidebar-list"><i class="fa fa-thumb-tack"></i><a class="sidebar-link sidebar-title link-nav" href="<c:url value='/'/>">
                      <svg class="stroke-icon">
                        <use href="/assets/svg/icon-sprite.svg#stroke-home"></use>
                      </svg>
                      <svg class="fill-icon">
                        <use href="/assets/svg/icon-sprite.svg#fill-home"></use>
                      </svg><span>Dashboard          </span></a>
                      
                      
                  <!-- do: 페이징 처리 삭제 -->
                  
                  <li class="sidebar-main-title">
                    <!-- <div>
                      <h6 class="lan-8">rr</h6>
                    </div> -->
                  </li>
                  
                  
                  <!-- do: 게시판 -->
                  <li class="sidebar-list"><i class="fa fa-thumb-tack"></i><a class="sidebar-link sidebar-title link-nav" href="task.go">
                      <svg class="stroke-icon">
                        <use href="/assets/svg/icon-sprite.svg#stroke-bookmark"></use>
                      </svg>
                      <svg class="fill-icon">
                        <use href="/assets/svg/icon-sprite.svg#fill-calender"></use>
                      </svg><span>게시판</span></a></li>
                      
                      
                  <!-- do: 메일 -->
                  <li class="sidebar-list"><i class="fa fa-thumb-tack"></i><a class="sidebar-link sidebar-title link-nav" href="task.go">
                      <svg class="stroke-icon">
                        <use href="/assets/svg/icon-sprite.svg#stroke-user"></use>
                      </svg>
                      <svg class="fill-icon">
                        <use href="/assets/svg/icon-sprite.svg#fill-ecommerce"></use>
                      </svg><span>인사 관리</span></a>
                    <ul class="sidebar-submenu">
                      <li><a href="add-products.go">직원 관리</a></li>
                      <li><a href="list-products.go">직원 근태 현황</a></li>
                      <li><a href="list-products.go">회사 일정 관리</a></li>
                    </ul>
                  </li>
                        <use href="../assets/svg/icon-sprite.svg#stroke-email"></use>
                      </svg>
                      <svg class="fill-icon">
                        <use href="../assets/svg/icon-sprite.svg#fill-calender"></use>
                      </svg><span>메일</span></a></li>
                      
                      
                  <!-- do: 나의 연차 -->
                  <li class="sidebar-list"><i class="fa fa-thumb-tack"></i><a class="sidebar-link sidebar-title link-nav" href="task.go">
                      <svg class="stroke-icon">
                        <use href="../assets/svg/icon-sprite.svg#stroke-blog"></use>
                      </svg>
                      <svg class="fill-icon">
                        <use href="../assets/svg/icon-sprite.svg#fill-calender"></use>
                      </svg><span>나의 연차</span></a></li>
                      
                      
                  
                  
                  
                  <!-- do: 전자 결재 -->
                  <li class="sidebar-list"><i class="fa fa-thumb-tack"></i><a class="sidebar-link sidebar-title" href="javascript:void(0)">
                      <svg class="stroke-icon">
                        <use href="/assets/svg/icon-sprite.svg#stroke-file"></use>
                      </svg>
                      <svg class="fill-icon">
                        <use href="/assets/svg/icon-sprite.svg#fill-ecommerce"></use>
                      </svg><span>전자 결재</span></a>
                    <ul class="sidebar-submenu">
                      <li><a href="add-products.go">기안서 작성</a></li>
                      <li><a href="list-products.go">기안서 리스트</a></li>
                    </ul>
                  </li>
                  
                  
                  <!-- do: 회의실 예약 -->
                  <li class="sidebar-list"><i class="fa fa-thumb-tack"></i><a class="sidebar-link sidebar-title" href="javascript:void(0)">
                      <svg class="stroke-icon">
                        <use href="/assets/svg/icon-sprite.svg#stroke-task"></use>
                      </svg>
                      <svg class="fill-icon">
                        <use href="/assets/svg/icon-sprite.svg#fill-ecommerce"></use>
                      </svg><span>예약 관리</span></a>
                    <ul class="sidebar-submenu">
                      <li><a href="add-products.go">회의실 예약</a></li>
                      <li><a href="list-products.go">회의실 예약 내역</a></li>
                    </ul>
                  </li>
                  
                  
                  <!-- do: 인사 관리 -->
                  <li class="sidebar-list"><i class="fa fa-thumb-tack"></i><a class="sidebar-link sidebar-title" href="javascript:void(0)">
                      <svg class="stroke-icon">
                        <use href="../assets/svg/icon-sprite.svg#stroke-user"></use>
                      </svg>
                      <svg class="fill-icon">
                        <use href="../assets/svg/icon-sprite.svg#fill-ecommerce"></use>
                      </svg><span>인사 관리</span></a>
                    <ul class="sidebar-submenu">
                      <li><a href="add-products.go">직원 관리</a></li>
                      <li><a href="list-products.go">직원 근태 현황</a></li>
                      <li><a href="list-products.go">회사 일정 관리</a></li>
                    </ul>
                  </li>
                  
                  
                  <!-- do: 재고 관리 -->
                  <li class="sidebar-list"><i class="fa fa-thumb-tack"></i><a class="sidebar-link sidebar-title" href="javascript:void(0)">
                      <svg class="stroke-icon">
                        <use href="/assets/svg/icon-sprite.svg#stroke-board"></use>
                      </svg>
                      <svg class="fill-icon">
                        <use href="/assets/svg/icon-sprite.svg#fill-ecommerce"></use>
                      </svg><span>재고 관리</span></a>
                    <ul class="sidebar-submenu">
                      <li><a href="add-products.go">재고 내역</a></li>
                      <li><a href="list-products.go">발주</a></li>
                      <li><a href="add-products.go">입고 내역</a></li>
                      <li><a href="list-products.go">주문</a></li>
                      <li><a href="list-products.go">출고 내역</a></li>
                    </ul>
                  </li>
                  
                  
				  <!-- do: 매출 관리 -->
                  <li class="sidebar-list"><i class="fa fa-thumb-tack"></i><a class="sidebar-link sidebar-title link-nav" href="file-manager.go">
                      <svg class="stroke-icon">
                        <use href="/assets/svg/icon-sprite.svg#stroke-charts"></use>
                      </svg>
                      <svg class="fill-icon">
                        <use href="/assets/svg/icon-sprite.svg#fill-file"></use>
                      </svg><span>매출 관리</span></a></li>
                      
                      
                  <!-- do: 거래처 관리 -->
                  <li class="sidebar-list"><i class="fa fa-thumb-tack"></i><a class="sidebar-link sidebar-title link-nav" href="file-manager.go">
                      <svg class="stroke-icon">
                        <use href="/assets/svg/icon-sprite.svg#stroke-learning"></use>
                      </svg>
                      <svg class="fill-icon">
                        <use href="/assets/svg/icon-sprite.svg#fill-file"></use>
                      </svg><span>거래처 관리</span></a></li>
                      
                      
                  <!-- do: 창고 관리 -->
                  <li class="sidebar-list"><i class="fa fa-thumb-tack"></i><a class="sidebar-link sidebar-title link-nav" href="storageManage.go">
                      <svg class="stroke-icon">
                        <use href="/assets/svg/icon-sprite.svg#stroke-animation"></use>
                      </svg>
                      <svg class="fill-icon">
                        <use href="/assets/svg/icon-sprite.svg#fill-file"></use>
                      </svg><span>창고 관리</span></a></li>
                      
                      
                  <!-- do: 기타... (필요시 참조) -->
                </ul>
              </div>
              <div class="right-arrow" id="right-arrow"><i data-feather="arrow-right"></i></div>
            </nav>
          </div>
        </div>