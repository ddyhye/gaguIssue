<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Mofi admin is super flexible, powerful, clean &amp; modern responsive bootstrap 5 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Mofi admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="pixelstrap">
    <link rel="icon" href="/assets/images/favicon.png" type="image/x-icon">
    <link rel="shortcut icon" href="/assets/images/favicon.png" type="image/x-icon">
    <title>Default Dashboard | Mofi - Premium Admin Template By Pixelstrap</title>

    <!-- Google font-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <!-- CSS Links -->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/font-awesome.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/icofont.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/themify.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/flag-icon.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/feather-icon.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/slick.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/slick-theme.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/scrollbar.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/animate.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/datatables.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/date-range-picker/flatpickr.min.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/bootstrap.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/style.css'/>">
    <link id="color" rel="stylesheet" href="<c:url value='/assets/css/color-1.css'/>" media="screen">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/responsive.css'/>">

    <style>
        /* 검색 바 크기 조정 및 우측 정렬 */
        #searchForm {
            display: flex;
            justify-content: flex-end;
            margin-bottom: 10px; 
            width: 100%; 
            box-sizing: border-box;
        }
        
      
        /* 검색 바 전체 크기 조정 */
        #searchForm .input-group {
            width: 500px; 
        }
        
        /* 검색 select 요소 크기 조정 */
        #searchType {
            width: 50px; 
            padding: 5px; 
            box-sizing: border-box; 
        }
    

        
        
        /* 테이블 열 크기 및 텍스트 정렬 */
        .table th, .table td {
            text-align: center; 
            vertical-align: middle; 
        }

        /* 구분 열 너비 */
        .table th:first-child, .table td:first-child {
            width: 10%; 
        }

        /* 제목 열 너비 */
        .table th:nth-child(2), .table td:nth-child(2) {
            width: 60%; 
            text-align: center; 
        }

        /* 작성일 열 너비 */
        .table th:nth-child(3), .table td:nth-child(3) {
            width: 10%; 
        }

        /* 조회수 열 너비 */
        .table th:nth-child(4), .table td:nth-child(4) {
            width: 7%; 
        }
    </style>
</head>

<body> 
    <div class="loader-wrapper"> 
        <div class="loader loader-1">
            <div class="loader-outter"></div>
            <div class="loader-inner"></div>
            <div class="loader-inner-1"></div>
        </div>
    </div>
    <!-- loader ends-->

    <!-- tap on top starts-->
    <div class="tap-top"><i data-feather="chevrons-up"></i></div>
    <!-- tap on top ends-->

    <!-- page-wrapper Start-->
    <div class="page-wrapper compact-wrapper" id="pageWrapper">
        <div class="page-header row">
            <div class="header-logo-wrapper col-auto">
                <div class="logo-wrapper">
                    <a href="index.go">
                        <img class="img-fluid for-light" src="/assets/images/logo/logo.png" alt=""/>
                        <img class="img-fluid for-dark" src="/assets/images/logo/logo_light.png" alt=""/>
                    </a>
                </div>
            </div>
            <div class="col-4 col-xl-4 page-title">
                <!-- 페이지명 변경 -->
                <h4 class="f-w-700">공지사항</h4>
                <nav>
                    <ol class="breadcrumb justify-content-sm-start align-items-center mb-0">
                        <li class="breadcrumb-item">
                            <a href="index.go"><i data-feather="home"></i></a>
                        </li>
                        <!-- 경로명 변경 -->
                        <li class="breadcrumb-item f-w-400">Dashboard</li>
                        <li class="breadcrumb-item f-w-400 active">Board</li>
                    </ol>
                </nav>
            </div>
            <%@ include file="../main/common_top.jsp" %>
        </div>

        <!-- Page Body Start-->
        <div class="page-body-wrapper">
            <%@ include file="../main/common_sidebar.jsp" %>

            <div class="page-body">
                <!-- Container-fluid starts-->
                <div class="container-fluid default-dashboard">
                    <!-- 여기서 코딩!!!! class명은 바꿔줘도 됩니당 -->
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between align-items-center">
                                    <h4 class="card-title">공지사항</h4>
                                    <a href="boardwrite.go" class="btn btn-primary">공지사항 작성</a>
                                </div>

                                <div class="card-body">
                                    <!-- 검색 바 -->
                                    <form id="searchForm" class="form-inline" action="searchboard.do" method="GET">
                                        <div class="input-group">
                                            <select id="searchType" name="searchType" class="form-select">
                                                <option value="po_title">제목</option>
                                                <option value="po_title||po_content">제목+내용</option>
                                            </select>
                                            <input id="keyword" type="text" name="keyword" class="form-control" placeholder="검색어를 입력하세요" value="${keyword}">
                                            <button type="submit" class="btn btn-primary">검색</button>
                                        </div>
                                    </form>

                                    <!-- 검색된 결과 출력 -->
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-striped">
                                            <thead>
                                                <tr>
                                                    <th>구분</th>
                                                    <th>제목</th>
                                                    <th>작성일</th>
                                                    <th>조회수</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <!-- 필독 -->
                                                <c:forEach var="post" items="${boardList}">
                                                    <c:if test="${post.is_notice}">
                                                        <tr>
                                                            <td style="color: purple; font-weight: bold;">필독</td>
                                                            <td><a href="boarddetail.go?post_id=${post.post_id}">${post.po_title}</a></td>
                                                            <td class="date-column">${post.written_datetime}</td>
                                                            <td>${post.po_view_count}</td>
                                                        </tr>
                                                    </c:if>
                                                </c:forEach>

                                                <!-- 공지 -->
                                                <c:forEach var="post" items="${boardList}">
                                                    <c:if test="${!post.is_notice}">
                                                        <tr>
                                                            <td style="color: black;">공지</td>
                                                            <td><a href="boarddetail.go?post_id=${post.post_id}">${post.po_title}</a></td>
                                                            <td class="date-column">${post.written_datetime}</td>
                                                            <td>${post.po_view_count}</td>
                                                        </tr>
                                                    </c:if>
                                                </c:forEach>

                                                <!-- 검색된 결과가 없을 때만 표시 -->
                                                <c:if test="${not empty searchType and not empty keyword}">
                                                    <c:choose>
                                                        <c:when test="${not empty searchResults}">
                                                            <c:forEach var="post" items="${searchResults}">
                                                                <c:if test="${post.is_notice}">
                                                                    <tr>
                                                                        <td style="color: purple; font-weight: bold;">필독</td>
                                                                        <td><a href="boarddetail.go?post_id=${post.post_id}">${post.po_title}</a></td>
                                                                        <td class="date-column">${post.written_datetime}</td>
                                                                        <td>${post.po_view_count}</td>
                                                                    </tr>
                                                                </c:if>
                                                                <c:if test="${!post.is_notice}">
                                                                    <tr>
                                                                        <td style="color: black;">공지</td>
                                                                        <td><a href="boarddetail.go?post_id=${post.post_id}">${post.po_title}</a></td>
                                                                        <td class="date-column">${post.written_datetime}</td>
                                                                        <td>${post.po_view_count}</td>
                                                                    </tr>
                                                                </c:if>
                                                            </c:forEach>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <tr>
                                                                <td colspan="4">검색된 결과가 없습니다.</td>
                                                            </tr>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:if>

                                                <!-- 전체 게시물이 없을 때 표시 -->
                                                <c:if test="${empty boardList and (empty searchType or empty keyword)}">
                                                    <tr>
                                                        <td colspan="4">게시물이 없습니다.</td>
                                                    </tr>
                                                </c:if>
                                            </tbody>
                                        </table>
                                    </div>

                                    <!-- 일반 Pagination -->
                                    <c:if test="${empty searchType and empty keyword}">
                                        <nav>
                                            <ul class="pagination justify-content-center">
                                                <c:if test="${page > 1}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="boardlist.go?page=${page - 1}" aria-label="Previous">
                                                            <span aria-hidden="true">&laquo;</span>
                                                        </a>
                                                    </li>
                                                </c:if>
                                                <c:forEach begin="1" end="${totalPages}" var="i">
                                                    <li class="page-item <c:if test='${i == page}'>active</c:if>">
                                                        <a class="page-link" href="boardlist.go?page=${i}">${i}</a>
                                                    </li>
                                                </c:forEach>
                                                <c:if test="${page < totalPages}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="boardlist.go?page=${page + 1}" aria-label="Next">
                                                            <span aria-hidden="true">&raquo;</span>
                                                        </a>
                                                    </li>
                                                </c:if>
                                            </ul>
                                        </nav>
                                    </c:if>

                                    <!-- 검색결과 Pagination -->
                                    <c:if test="${not empty searchType and not empty keyword}">
                                        <nav>
                                            <ul class="pagination justify-content-center">
                                                <c:if test="${page > 1}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="searchboard.do?page=${page - 1}&searchType=${searchType}&keyword=${keyword}" aria-label="Previous">
                                                            <span aria-hidden="true">&laquo;</span>
                                                        </a>
                                                    </li>
                                                </c:if>
                                                <c:forEach begin="1" end="${searchTotalPages}" var="i">
                                                    <li class="page-item <c:if test='${i == page}'>active</c:if>">
                                                        <a class="page-link" href="searchboard.do?page=${i}&searchType=${searchType}&keyword=${keyword}">${i}</a>
                                                    </li>
                                                </c:forEach>
                                                <c:if test="${page < searchTotalPages}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="searchboard.do?page=${page + 1}&searchType=${searchType}&keyword=${keyword}" aria-label="Next">
                                                            <span aria-hidden="true">&raquo;</span>
                                                        </a>
                                                    </li>
                                                </c:if>
                                            </ul>
                                        </nav>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Container-fluid Ends-->
            </div>
        </div>

        <!-- footer start-->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12 footer-copyright d-flex flex-wrap align-items-center justify-content-between">
                        <p class="mb-0 f-w-600">Copyright <span class="year-update"></span> © Mofi theme by pixelstrap</p>
                        <p class="mb-0 f-w-600">Hand crafted & made with
                            <svg class="footer-icon">
                                <use href="/assets/svg/icon-sprite.svg#footer-heart"></use>
                            </svg>
                        </p>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const dateColumns = document.querySelectorAll('.date-column');

            dateColumns.forEach(column => {
                const originalDateStr = column.textContent.trim();

                if (originalDateStr) {
                    const dateParts = originalDateStr.split(' ')[0];
                    column.textContent = dateParts;
                } else {
                    column.textContent = '--';
                }
            });
        });
        
    </script>

    <!-- JavaScript Libraries -->
    <script src="/assets/js/jquery.min.js"></script>
    <script src="/assets/js/bootstrap/bootstrap.bundle.min.js"></script>
    <script src="/assets/js/icons/feather-icon/feather.min.js"></script>
    <script src="/assets/js/icons/feather-icon/feather-icon.js"></script>
    <script src="/assets/js/scrollbar/simplebar.js"></script>
    <script src="/assets/js/scrollbar/custom.js"></script>
    <script src="/assets/js/config.js"></script>
    <script src="/assets/js/sidebar-menu.js"></script>
    <script src="/assets/js/sidebar-pin.js"></script>
    <script src="/assets/js/slick/slick.min.js"></script>
    <script src="/assets/js/slick/slick.js"></script>
    <script src="/assets/js/header-slick.js"></script>
    <script src="/assets/js/chart/apex-chart/apex-chart.js"></script>
    <script src="/assets/js/chart/apex-chart/stock-prices.js"></script>
    <script src="/assets/js/chart/apex-chart/moment.min.js"></script>
    <script src="/assets/js/notify/bootstrap-notify.min.js"></script>
    <script src="/assets/js/dashboard/default.js"></script>
    <script src="/assets/js/notify/index.js"></script>
    <script src="/assets/js/datatable/datatables/jquery.dataTables.min.js"></script>
    <script src="/assets/js/datatable/datatables/datatable.custom.js"></script>
    <script src="/assets/js/datatable/datatables/datatable.custom1.js"></script>
    <script src="/assets/js/datepicker/date-range-picker/moment.min.js"></script>
    <script src="/assets/js/datepicker/date-range-picker/datepicker-range-custom.js"></script>
    <script src="/assets/js/typeahead/handlebars.js"></script>
    <script src="/assets/js/typeahead/typeahead.bundle.js"></script>
    <script src="/assets/js/typeahead/typeahead.custom.js"></script>
    <script src="/assets/js/typeahead-search/handlebars.js"></script>
    <script src="/assets/js/typeahead-search/typeahead-custom.js"></script>
    <script src="/assets/js/height-equal.js"></script>
    <script src="/assets/js/animation/wow/wow.min.js"></script>
    <script src="/assets/js/script.js"></script>
    <script src="/assets/js/script1.js"></script>
    <script src="/assets/js/theme-customizer/customizer.js"></script>
    <script>new WOW().init();</script>
</body>
</html>
