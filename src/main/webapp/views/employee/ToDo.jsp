<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
<html lang="ko">
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
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;300;400;500;600;700;800;900&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/font-awesome.css'/>">
    <!-- ico-font-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/icofont.css'/>">
    <!-- Themify icon-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/themify.css'/>">
    <!-- Flag icon-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/flag-icon.css'/>">
    <!-- Feather icon-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/feather-icon.css'/>">
    <!-- Plugins css start-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/slick.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/slick-theme.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/scrollbar.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/animate.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/datatables.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/date-range-picker/flatpickr.min.css'/>">
    <!-- Plugins css Ends-->
    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/bootstrap.css'/>">
    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/style.css'/>">
    <link id="color" rel="stylesheet" href="<c:url value='/assets/css/color-1.css'/>" media="screen">
    <!-- Responsive css-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/responsive.css'/>">
    
  </head>
  <body> 
   <div class="page-wrapper compact-wrapper" id="pageWrapper">
      <div class="page-body-wrapper">
        <!-- Page Sidebar Start-->
        <%@ include file="../main/common_sidebar.jsp" %>
        <!-- Page Sidebar Ends-->
        <div class="page-body">
          <!-- Container-fluid starts-->
          <div class="container-fluid email-wrap bookmark-wrap todo-wrap">
            <div class="row">
              <div class="col-xxl-3 col-xl-4 box-col-30">
                <div class="email-sidebar md-sidebar"><a class="btn btn-primary email-aside-toggle md-sidebar-toggle">To Do filter</a>
                  <div class="email-left-aside md-sidebar-aside">
                    <div class="card theme-scrollbar mb-0">
                      <div class="card-body"> 
                        <div class="email-app-sidebar left-bookmark custom-scrollbar">
                          <div class="d-flex align-items-center">
                            <div class="media-size-email"><img class="me-3 rounded-circle" src="/assets/images/user/user.png" alt=""></div>
                            <div class="flex-grow-1"> 
                              <h6 class="f-w-600">Mark Jecno</h6>
                              <p>Markjecno@gmail.com</p>
                            </div>
                          </div>
                          <ul class="nav main-menu">
                            <li class="nav-item">
                              <button class="btn-primary text-white badge-light d-block btn-mail w-100"><i class="me-2" data-feather="check-circle"> </i>To Do List</button>
                            </li>
                            <li class="nav-item"> <a href="javascript:void(0)"><span class="iconbg badge-light-primary"><i data-feather="file-plus"></i></span><span class="title ms-2">All Task</span></a></li>
                            <li class="nav-item"><a href="javascript:void(0)"><span class="iconbg badge-light-success"><i data-feather="check-circle"></i></span><span class="title ms-2">Completed</span><span class="badge rounded-pill badge-success">3</span></a></li>
                            <li class="nav-item"><a href="javascript:void(0)"><span class="iconbg badge-light-danger"><i data-feather="cast"></i></span><span class="title ms-2">Pending</span><span class="badge rounded-pill badge-danger">2</span></a></li>
                            <li class="nav-item"><a href="javascript:void(0)"><span class="iconbg badge-light-info"><i data-feather="activity"></i></span><span class="title ms-2">In Process</span><span class="badge rounded-pill badge-primary">2</span></a></li>
                            <li class="nav-item"><a href="javascript:void(0)"><span class="iconbg badge-light-danger"><i data-feather="trash"></i></span><span class="title ms-2">Trash</span></a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-xxl-9 col-xl-8 box-col-12">
                <div class="card">
                  <div class="card-header b-bottom">
                    <div class="todo-list-header"> 
                      <div class="new-task-wrapper input-group">
                        <input class="form-control" id="new-task" placeholder="Enter new task here. . ."><span class="btn btn-primary add-new-task-btn" id="add-task">Add Task</span>
                      </div>
                    </div>
                  </div>
                  <div class="card-body">
                    <div class="todo">
                      <div class="todo-list-wrapper theme-scrollbar">
                        <div class="todo-list-container">
                          <div class="todo-list-body theme-scrollbar">
                            <ul id="todo-list">
                              <li class="task">
                                <div class="task-container">
                                  <h4 class="task-label">Check validation involves making sure all your tags are properly closed and nested.</h4>
                                  <div class="d-flex align-items-center gap-3"><span class="badge badge-light-primary done-badge">In Progress</span>
                                    <h5 class="assign-name m-0">10 Nov</h5><span class="task-action-btn"><span class="action-box large delete-btn" title="Delete Task"><i class="icon"><i class="icon-trash"></i></i></span></span>
                                  </div>
                                </div>
                              </li>
                              <li class="task">
                                <div class="task-container">
                                  <h4 class="task-label">Test the outgoing links from all the pages to the specific domain under test.</h4>
                                  <div class="d-flex align-items-center gap-3"><span class="badge badge-light-danger">Pending</span>
                                    <h5 class="assign-name m-0">04 Aug</h5><span class="task-action-btn"><span class="action-box large delete-btn" title="Delete Task"><i class="icon"><i class="icon-trash"></i></i></span></span>
                                  </div>
                                </div>
                              </li>
                              <li class="completed task">
                                <div class="task-container">
                                  <h4 class="task-label">Test links are used to send emails to admin or other users from web pages.</h4>
                                  <div class="d-flex align-items-center gap-3"><span class="badge badge-light-success">Done</span>
                                    <h5 class="assign-name m-0">25 Feb</h5><span class="task-action-btn"><span class="action-box large delete-btn" title="Delete Task"><i class="icon"><i class="icon-trash"></i></i></span></span>
                                  </div>
                                </div>
                              </li>
                              <li class="task">
                                <div class="task-container">
                                  <h4 class="task-label">Options to create forms, if any, form deletes a view or modify the forms.</h4>
                                  <div class="d-flex align-items-center gap-3"><span class="badge badge-light-primary">In Progress</span>
                                    <h5 class="assign-name m-0">15 Dec</h5><span class="task-action-btn"><span class="action-box large delete-btn" title="Delete Task"><i class="icon"><i class="icon-trash"></i></i></span></span>
                                  </div>
                                </div>
                              </li>
                              <li class="task">
                                <div class="task-container">
                                  <h4 class="task-label">Wrong inputs in the forms to the fields in the forms.</h4>
                                  <div class="d-flex align-items-center gap-3"><span class="badge badge-light-danger">Pending</span>
                                    <h5 class="assign-name m-0">11 Nov</h5><span class="task-action-btn"><span class="action-box large delete-btn" title="Delete Task"><i class="icon"><i class="icon-trash"></i></i></span></span>
                                  </div>
                                </div>
                              </li>
                              <li class="task completed">
                                <div class="task-container">
                                  <h4 class="task-label">Check if the instructions provided are perfect to satisfy its purpose.</h4>
                                  <div class="d-flex align-items-center gap-3"><span class="badge badge-light-danger">Pending</span>
                                    <h5 class="assign-name m-0">04 Sept</h5><span class="task-action-btn"><span class="action-box large delete-btn" title="Delete Task"><i class="icon"><i class="icon-trash"></i></i></span></span>
                                  </div>
                                </div>
                              </li>
                              <li class="task">
                                <div class="task-container">
                                  <h4 class="task-label">Application server and Database server interface.</h4>
                                  <div class="d-flex align-items-center gap-3"><span class="badge badge-light-success">Done</span>
                                    <h5 class="assign-name m-0">08 July</h5><span class="task-action-btn"><span class="action-box large delete-btn" title="Delete Task"><i class="icon"><i class="icon-trash"></i></i></span></span>
                                  </div>
                                </div>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                      <div class="notification-popup hide">
                        <p><span class="task"></span><span class="notification-text"></span></p>
                      </div>
                    </div>
                    <!-- HTML Template for tasks-->
                    <script id="task-template" type="tect/template">
                      <li class="task">
                        <div class="task-container">
                          <h4 class="task-label"></h4>
                          <div class="d-flex align-items-center gap-3">
                            <span class="badge badge-light-danger">Pending</span>
                            <h5 class="assign-name m-0">16 Jan</h5>
                            <span class="task-action-btn">
                              <span class="action-box large delete-btn" title="Delete Task">
                                <i class="icon"><i class="icon-trash"></i></i>
                              </span>
                            </span>
                          </div>
                        </div>
                      </li>
                      
                    </script>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Container-fluid Ends-->
          <!-- Container-fluid ends  -->
        </div>
        <!-- footer start-->
        <footer class="footer">
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-12 footer-copyright d-flex flex-wrap align-items-center justify-content-between">
                <p class="mb-0 f-w-600">Copyright <span class="year-update"> </span> Â© Mofi theme by pixelstrap  </p>
                <p class="mb-0 f-w-600">Hand crafted & made with
                  <svg class="footer-icon">
                    <use href="/assets/svg/icon-sprite.svg#footer-heart"> </use>
                  </svg>
                </p>
              </div>
            </div>
          </div>
        </footer>
      </div>
    </div>
    <!-- latest jquery-->
    <script src="/assets/js/jquery.min.js"></script>
    <!-- Bootstrap js-->
    <script src="/assets/js/bootstrap/bootstrap.bundle.min.js"></script>
    <!-- feather icon js-->
    <script src="/assets/js/icons/feather-icon/feather.min.js"></script>
    <script src="/assets/js/icons/feather-icon/feather-icon.js"></script>
    <!-- scrollbar js-->
    <script src="/assets/js/scrollbar/simplebar.js"></script>
    <script src="/assets/js/scrollbar/custom.js"></script>
    <!-- Sidebar jquery-->
    <script src="/assets/js/config.js"></script>
    <!-- Plugins JS start-->
    <script src="/assets/js/sidebar-menu.js"></script>
    <script src="/assets/js/sidebar-pin.js"></script>
    <script src="/assets/js/slick/slick.min.js"></script>
    <script src="/assets/js/slick/slick.js"></script>
    <script src="/assets/js/header-slick.js"></script>
    <script src="/assets/js/todo/todo.js"></script>
    <!-- calendar js-->
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
    <!-- Plugins JS Ends-->
    <!-- Theme js-->
    <script src="/assets/js/script.js"></script>
    <script src="/assets/js/script1.js"></script>
    <script src="/assets/js/theme-customizer/customizer.js"></script>
    <!-- Plugin used-->
    <script>new WOW().init();</script>
  </body>
</html>