<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
<html lang="ko">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Mofi admin is super flexible, powerful, clean &amp; modern responsive bootstrap 5 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Mofi admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="pixelstrap">
    <link rel="icon" href="../assets/images/favicon.png" type="image/x-icon">
    <link rel="shortcut icon" href="../assets/images/favicon.png" type="image/x-icon">
    <title>To-Do | Mofi - Premium Admin Template By Pixelstrap</title>
    <!-- Google font-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;300;400;500;600;700;800;900&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../assets/css/font-awesome.css">
    <!-- ico-font-->
    <link rel="stylesheet" type="text/css" href="../assets/css/vendors/icofont.css">
    <!-- Themify icon-->
    <link rel="stylesheet" type="text/css" href="../assets/css/vendors/themify.css">
    <!-- Flag icon-->
    <link rel="stylesheet" type="text/css" href="../assets/css/vendors/flag-icon.css">
    <!-- Feather icon-->
    <link rel="stylesheet" type="text/css" href="../assets/css/vendors/feather-icon.css">
    <!-- Plugins css start-->
    <link rel="stylesheet" type="text/css" href="../assets/css/vendors/slick.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/vendors/slick-theme.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/vendors/scrollbar.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/vendors/animate.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/vendors/todo.css">
    <!-- Plugins css Ends-->
    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/vendors/bootstrap.css">
    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
    <link id="color" rel="stylesheet" href="../assets/css/color-1.css" media="screen">
    <!-- Responsive css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/responsive.css">
  </head>
  <body>
    <!-- tap on top starts-->
    <div class="tap-top"><i data-feather="chevrons-up"></i></div>
    <!-- tap on tap ends--> 
    <div class="loader-wrapper"> 
      <div class="loader loader-1">
        <div class="loader-outter"></div>
        <div class="loader-inner"></div>
        <div class="loader-inner-1"></div>
      </div>
    </div>
    <!-- loader ends-->
    <!-- page-wrapper Start-->
    <div class="page-wrapper compact-wrapper" id="pageWrapper">
      <div class="page-header row">
        <div class="header-logo-wrapper col-auto">
          <div class="logo-wrapper"><a href="index.html"><img class="img-fluid for-light" src="../assets/images/logo/logo.png" alt=""/><img class="img-fluid for-dark" src="../assets/images/logo/logo_light.png" alt=""/></a></div>
        </div>
        <div class="col-4 col-xl-4 page-title">
          <h4 class="f-w-700">To-Do</h4>
          <nav>
            <ol class="breadcrumb justify-content-sm-start align-items-center mb-0">
              <li class="breadcrumb-item"><a href="index.html"> <i data-feather="home"> </i></a></li>
              <li class="breadcrumb-item f-w-400">Apps</li>
              <li class="breadcrumb-item f-w-400 active">To-Do</li>
            </ol>
          </nav>
        </div>
        <!-- Page Header Start-->
        <div class="header-wrapper col m-0">
          <div class="row">
            <form class="form-inline search-full col" action="#" method="get">
              <div class="form-group w-100">
                <div class="Typeahead Typeahead--twitterUsers">
                  <div class="u-posRelative">
                    <input class="demo-input Typeahead-input form-control-plaintext w-100" type="text" placeholder="Search Mofi .." name="q" title="" autofocus>
                    <div class="spinner-border Typeahead-spinner" role="status"><span class="sr-only">Loading...</span></div><i class="close-search" data-feather="x"></i>
                  </div>
                  <div class="Typeahead-menu"></div>
                </div>
              </div>
            </form>
            <div class="header-logo-wrapper col-auto p-0">
              <div class="logo-wrapper"><a href="index.html"><img class="img-fluid" src="../assets/images/logo/logo.png" alt=""></a></div>
              <div class="toggle-sidebar">
                <svg class="stroke-icon sidebar-toggle status_toggle middle">
                  <use href="../assets/svg/icon-sprite.svg#toggle-icon"></use>
                </svg>
              </div>
            </div>
            <div class="nav-right col-xxl-8 col-xl-6 col-md-7 col-8 pull-right right-header p-0 ms-auto">
              <ul class="nav-menus">
                <li>                         <span class="header-search">
                    <svg>
                      <use href="../assets/svg/icon-sprite.svg#search"></use>
                    </svg></span></li>
                <li>
                  <div class="form-group w-100">
                    <div class="Typeahead Typeahead--twitterUsers">
                      <div class="u-posRelative d-flex align-items-center">
                        <svg class="search-bg svg-color"> 
                          <use href="../assets/svg/icon-sprite.svg#search"></use>
                        </svg>
                        <input class="demo-input py-0 Typeahead-input form-control-plaintext w-100" type="text" placeholder="Search Mofi .." name="q" title="">
                      </div>
                    </div>
                  </div>
                </li>
                <li class="fullscreen-body">                       <span>
                    <svg id="maximize-screen">
                      <use href="../assets/svg/icon-sprite.svg#full-screen"></use>
                    </svg></span></li>
                <li class="onhover-dropdown">
                  <div class="notification-box">
                    <svg>
                      <use href="../assets/svg/icon-sprite.svg#notification"></use>
                    </svg><span class="badge rounded-pill badge-primary">4 </span>
                  </div>
                  <div class="onhover-show-div notification-dropdown">
                    <h5 class="f-18 f-w-600 mb-0 dropdown-title">Notifications                               </h5>
                    <ul class="notification-box">
                      <li class="toast default-show-toast align-items-center border-0 fade show" aria-live="assertive" aria-atomic="true" data-bs-autohide="false">
                        <div class="d-flex justify-content-between">
                          <div class="toast-body d-flex p-0">
                            <div class="flex-shrink-0 bg-light-primary"><img class="w-auto" src="../assets/images/dashboard/icon/wallet.png" alt="Wallet"></div>
                            <div class="flex-grow-1"> <a href="private-chat.html">
                                <h6 class="m-0">Daily offer added</h6></a>
                              <p class="m-0">User-only offer added</p>
                            </div>
                          </div>
                          <button class="btn-close btn-close-white shadow-none" type="button" data-bs-dismiss="toast" aria-label="Close"></button>
                        </div>
                      </li>
                      <li class="toast default-show-toast align-items-center border-0 fade show" aria-live="assertive" aria-atomic="true" data-bs-autohide="false"> 
                        <div class="d-flex justify-content-between">
                          <div class="toast-body d-flex p-0">
                            <div class="flex-shrink-0 bg-light-info"><img class="w-auto" src="../assets/images/dashboard/icon/shield-dne.png" alt="Shield-dne"></div>
                            <div class="flex-grow-1"> <a href="private-chat.html">
                                <h6 class="m-0">Product Review</h6></a>
                              <p class="m-0">Changed to a workflow</p>
                            </div>
                          </div>
                          <button class="btn-close btn-close-white shadow-none" type="button" data-bs-dismiss="toast" aria-label="Close"></button>
                        </div>
                      </li>
                      <li class="toast default-show-toast align-items-center border-0 fade show" aria-live="assertive" aria-atomic="true" data-bs-autohide="false">  
                        <div class="d-flex justify-content-between">
                          <div class="toast-body d-flex p-0">
                            <div class="flex-shrink-0 bg-light-warning"><img class="w-auto" src="../assets/images/dashboard/icon/graph.png" alt="Graph"></div>
                            <div class="flex-grow-1"> <a href="private-chat.html">
                                <h6 class="m-0">Return Products</h6></a>
                              <p class="m-0">52 items were returned</p>
                            </div>
                          </div>
                          <button class="btn-close btn-close-white shadow-none" type="button" data-bs-dismiss="toast" aria-label="Close"></button>
                        </div>
                      </li>
                      <li class="toast default-show-toast align-items-center border-0 fade show" aria-live="assertive" aria-atomic="true" data-bs-autohide="false"> 
                        <div class="d-flex justify-content-between"> 
                          <div class="toast-body d-flex p-0">
                            <div class="flex-shrink-0 bg-light-tertiary"><img class="w-auto" src="../assets/images/dashboard/icon/ticket-star.png" alt="Ticket-star"></div>
                            <div class="flex-grow-1"> <a href="private-chat.html">
                                <h6 class="m-0">Recently Paid</h6></a>
                              <p class="m-0">Card payment of $343   </p>
                            </div>
                          </div>
                          <button class="btn-close btn-close-white shadow-none" type="button" data-bs-dismiss="toast" aria-label="Close"></button>
                        </div>
                      </li>
                    </ul>
                  </div>
                </li>
                <li class="onhover-dropdown">
                  <svg>
                    <use href="../assets/svg/icon-sprite.svg#header-bookmark"></use>
                  </svg>
                  <div class="onhover-show-div bookmark-flip">
                    <div class="flip-card">
                      <div class="flip-card-inner">
                        <div class="front">
                          <h5 class="f-18 f-w-600 mb-0 dropdown-title">Bookmark</h5>
                          <ul class="bookmark-dropdown">
                            <li>
                              <div class="row">
                                <div class="col-4 text-center">
                                  <div class="bookmark-content">
                                    <div class="bookmark-icon bg-light-primary"><i class="stroke-primary" data-feather="file-text"></i></div><span class="font-primary">Forms</span>
                                  </div>
                                </div>
                                <div class="col-4 text-center">
                                  <div class="bookmark-content">
                                    <div class="bookmark-icon bg-light-secondary"><i class="stroke-secondary" data-feather="user"></i></div><span class="font-secondary">Profile</span>
                                  </div>
                                </div>
                                <div class="col-4 text-center">
                                  <div class="bookmark-content">
                                    <div class="bookmark-icon bg-light-warning"><i class="stroke-warning" data-feather="server"></i></div><span class="font-warning">Tables</span>
                                  </div>
                                </div>
                              </div>
                            </li>
                            <li class="text-center"><a class="flip-btn f-w-700 btn btn-primary w-100" id="flip-btn" href="javascript:void(0)">Add Bookmark</a></li>
                          </ul>
                        </div>
                        <div class="back">
                          <ul>
                            <li>
                              <div class="bookmark-dropdown flip-back-content">
                                <input type="text" placeholder="search...">
                              </div>
                            </li>
                            <li><a class="f-w-700 d-block flip-back btn btn-primary w-100" id="flip-back" href="javascript:void(0)">Back</a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="mode">
                    <svg>
                      <use href="../assets/svg/icon-sprite.svg#moon"></use>
                    </svg>
                  </div>
                </li>
                <li class="onhover-dropdown">
                  <div class="notification-box">
                    <svg>
                      <use href="../assets/svg/icon-sprite.svg#header-message"></use>
                    </svg><span class="badge rounded-pill badge-info">3 </span>
                  </div>
                  <div class="onhover-show-div notification-dropdown">
                    <h5 class="f-18 f-w-600 mb-0 dropdown-title">Messages</h5>
                    <ul class="messages">
                      <li class="d-flex b-light1-primary gap-2"> 
                        <div class="flex-shrink-0"><img src="../assets/images/dashboard-2/user/1.png" alt="Graph"></div>
                        <div class="flex-grow-1"> <a href="private-chat.html">
                            <h6 class="font-primary f-w-600">Hackett Yessenia</h6></a>
                          <p>Hello Miss...&#128522;</p>
                        </div><span>2 hours</span>
                      </li>
                      <li class="d-flex b-light1-secondary gap-2"> 
                        <div class="flex-shrink-0"><img src="../assets/images/dashboard-2/user/2.png" alt="Graph"></div>
                        <div class="flex-grow-1"> <a href="private-chat.html">
                            <h6 class="font-secondary f-w-600">schneider Adan</h6></a>
                          <p>Wishing You a Happy Birthday Dear..  ð¥³&#127882;</p>
                        </div><span>3 hours</span>
                      </li>
                      <li class="d-flex b-light1-success gap-2"> 
                        <div class="flex-shrink-0"><img src="../assets/images/dashboard-2/user/3.png" alt="Graph"></div>
                        <div class="flex-grow-1"> <a href="private-chat.html">
                            <h6 class="font-success f-w-600">Mahdi Gholizadeh</h6></a>
                          <p>Hello Dear!! This Theme Is Very beautiful</p>
                        </div><span>5 hours</span>
                      </li>
                      <li class="bg-transparent"><a class="f-w-700 btn btn-primary w-100" href="letter-box.html">View all</a></li>
                    </ul>
                  </div>
                </li>
                <li class="cart-nav onhover-dropdown">
                  <div class="cart-box">
                    <svg>
                      <use href="../assets/svg/icon-sprite.svg#stroke-ecommerce"></use>
                    </svg>
                  </div>
                  <div class="cart-dropdown onhover-show-div">
                    <h5 class="f-18 f-w-600 mb-0 dropdown-title">Cart</h5>
                    <ul>
                      <li>
                        <div class="d-flex"><img class="img-fluid b-r-5 me-3 img-60" src="../assets/images/other-images/cart-img.jpg" alt="">
                          <div class="flex-grow-1"><span class="f-w-600">Furniture Chair for Home</span>
                            <div class="qty-box">
                              <div class="input-group"><span class="input-group-prepend">
                                  <button class="btn quantity-left-minus" type="button" data-type="minus" data-field="">-</button></span>
                                <input class="form-control input-number" type="text" name="quantity" value="1"><span class="input-group-prepend">
                                  <button class="btn quantity-right-plus" type="button" data-type="plus" data-field="">+</button></span>
                              </div>
                            </div>
                            <h6 class="font-primary">$500</h6>
                          </div>
                          <div class="close-circle"><a class="bg-danger" href="#"><i data-feather="x"></i></a></div>
                        </div>
                      </li>
                      <li>
                        <div class="d-flex"><img class="img-fluid b-r-5 me-3 img-60" src="../assets/images/other-images/table-img.jpg" alt="">
                          <div class="flex-grow-1"><span class="f-w-600">Furniture Table for Office</span>
                            <div class="qty-box">
                              <div class="input-group"><span class="input-group-prepend">
                                  <button class="btn quantity-left-minus" type="button" data-type="minus" data-field="">-</button></span>
                                <input class="form-control input-number" type="text" name="quantity" value="1"><span class="input-group-prepend">
                                  <button class="btn quantity-right-plus" type="button" data-type="plus" data-field="">+</button></span>
                              </div>
                            </div>
                            <h6 class="font-primary">$500.00</h6>
                          </div>
                          <div class="close-circle"><a class="bg-danger" href="#"><i data-feather="x"></i></a></div>
                        </div>
                      </li>
                      <li class="total">
                        <h6 class="mb-0">Order Total : <span class="f-w-600 f-right">$1000.00</span></h6>
                      </li>
                      <li class="text-center"><a class="d-block view-cart f-w-700 btn btn-primary w-100" href="cart.html">View Cart</a><a class="btn btn-primary view-checkout w-100 f-w-700" href="checkout.html">Checkout</a></li>
                    </ul>
                  </div>
                </li>
                <li class="profile-nav onhover-dropdown px-0 py-0">
                  <div class="d-flex profile-media align-items-center"><img class="img-30" src="../assets/images/dashboard/profile.png" alt="">
                    <div class="flex-grow-1"><span>아루루</span>
                      <p class="mb-0 font-outfit">임원진<i class="fa fa-angle-down"></i></p>
                    </div>
                  </div>
                  <ul class="profile-dropdown onhover-show-div">
                    <li><a href="private-chat.html"><i data-feather="user"></i><span>Account </span></a></li>
                    <li><a href="letter-box.html"><i data-feather="mail"></i><span>Inbox</span></a></li>
                    <li><a href="task.html"><i data-feather="file-text"></i><span>Taskboard</span></a></li>
                    <li><a href="edit-profile.html"><i data-feather="settings"></i><span>Settings</span></a></li>
                    <li><a href="login.html"><i data-feather="log-in"> </i><span>Log out</span></a></li>
                  </ul>
                </li>
              </ul>
            </div>
            <script class="result-template" type="text/x-handlebars-template">
              <div class="ProfileCard u-cf">                        
              <div class="ProfileCard-avatar"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-airplay m-0"><path d="M5 17H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-1"></path><polygon points="12 15 17 21 7 21 12 15"></polygon></svg></div>
              <div class="ProfileCard-details">
              <div class="ProfileCard-realName">{{name}}</div>
              </div>
              </div>
            </script>
            <script class="empty-template" type="text/x-handlebars-template"><div class="EmptyMessage">Your search turned up 0 results. This most likely means the backend is down, yikes!</div></script>
          </div>
        </div>
        <!-- Page Header Ends                              -->
      </div>
      <!-- Page Body Start-->
      <div class="page-body-wrapper">
        <!-- Page Sidebar Start-->
        <%@ include file="/views/main/common_sidebar.jsp" %>
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
                            <div class="media-size-email"><img class="me-3 rounded-circle" src="../assets/images/user/user.png" alt=""></div>
                            <div class="flex-grow-1"> 
                              <h6 class="f-w-600">아루루</h6>
                              <p>ahruru2@email.com</p>
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
                                  <h4 class="task-label">커피마시기</h4>
                                  <div class="d-flex align-items-center gap-3"><span class="badge badge-light-primary done-badge"> </span>
                                    <h5 class="assign-name m-0">11 July</h5><span class="task-action-btn"><span class="action-box large delete-btn" title="Delete Task"><i class="icon"><i class="icon-trash"></i></i></span></span>
                                  </div>
                                </div>
                              </li>
                              <li class="task">
                                <div class="task-container">
                                  <h4 class="task-label">부장님한테 욕먹기</h4>
                                  <div class="d-flex align-items-center gap-3"><span class="badge badge-light-danger"></span>
                                    <h5 class="assign-name m-0">11 July</h5><span class="task-action-btn"><span class="action-box large delete-btn" title="Delete Task"><i class="icon"><i class="icon-trash"></i></i></span></span>
                                  </div>
                                </div>
                              </li>
                              <li class="completed task">
                                <div class="task-container">
                                  <h4 class="task-label">사수 뒷담화 하기</h4>
                                  <div class="d-flex align-items-center gap-3"><span class="badge badge-light-success"></span>
                                    <h5 class="assign-name m-0">11 July</h5><span class="task-action-btn"><span class="action-box large delete-btn" title="Delete Task"><i class="icon"><i class="icon-trash"></i></i></span></span>
                                  </div>
                                </div>
                              </li>
                              <li class="task">
                                <div class="task-container">
                                  <h4 class="task-label">재고 확인하기</h4>
                                  <div class="d-flex align-items-center gap-3"><span class="badge badge-light-primary"></span>
                                    <h5 class="assign-name m-0">11 July</h5><span class="task-action-btn"><span class="action-box large delete-btn" title="Delete Task"><i class="icon"><i class="icon-trash"></i></i></span></span>
                                  </div>
                                </div>
                              </li>
                              <li class="task">
                                <div class="task-container">
                                  <h4 class="task-label">들어온 제품 물량 확인</h4>
                                  <div class="d-flex align-items-center gap-3"><span class="badge badge-light-danger"></span>
                                    <h5 class="assign-name m-0">11 July</h5><span class="task-action-btn"><span class="action-box large delete-btn" title="Delete Task"><i class="icon"><i class="icon-trash"></i></i></span></span>
                                  </div>
                                </div>
                              </li>
                              <li class="task completed">
                                <div class="task-container">
                                  <h4 class="task-label">회의실 예약하기</h4>
                                  <div class="d-flex align-items-center gap-3"><span class="badge badge-light-danger"></span>
                                    <h5 class="assign-name m-0">11 July</h5><span class="task-action-btn"><span class="action-box large delete-btn" title="Delete Task"><i class="icon"><i class="icon-trash"></i></i></span></span>
                                  </div>
                                </div>
                              </li>
                              <li class="task">
                                <div class="task-container">
                                  <h4 class="task-label">청소하기</h4>
                                  <div class="d-flex align-items-center gap-3"><span class="badge badge-light-success"></span>
                                    <h5 class="assign-name m-0">11 July</h5><span class="task-action-btn"><span class="action-box large delete-btn" title="Delete Task"><i class="icon"><i class="icon-trash"></i></i></span></span>
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
          <!-- Container-fluid ends                    -->
        </div>
        <!-- footer start-->
        <footer class="footer">
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-12 footer-copyright d-flex flex-wrap align-items-center justify-content-between">
                <p class="mb-0 f-w-600">Copyright <span class="year-update"> </span> Â© Mofi theme by pixelstrap  </p>
                <p class="mb-0 f-w-600">Hand crafted & made with
                  <svg class="footer-icon">
                    <use href="../assets/svg/icon-sprite.svg#footer-heart"> </use>
                  </svg>
                </p>
              </div>
            </div>
          </div>
        </footer>
      </div>
    </div>
    <!-- latest jquery-->
    <script src="../assets/js/jquery.min.js"></script>
    <!-- Bootstrap js-->
    <script src="../assets/js/bootstrap/bootstrap.bundle.min.js"></script>
    <!-- feather icon js-->
    <script src="../assets/js/icons/feather-icon/feather.min.js"></script>
    <script src="../assets/js/icons/feather-icon/feather-icon.js"></script>
    <!-- scrollbar js-->
    <script src="../assets/js/scrollbar/simplebar.js"></script>
    <script src="../assets/js/scrollbar/custom.js"></script>
    <!-- Sidebar jquery-->
    <script src="../assets/js/config.js"></script>
    <!-- Plugins JS start-->
    <script src="../assets/js/sidebar-menu.js"></script>
    <script src="../assets/js/sidebar-pin.js"></script>
    <script src="../assets/js/slick/slick.min.js"></script>
    <script src="../assets/js/slick/slick.js"></script>
    <script src="../assets/js/header-slick.js"></script>
    <script src="../assets/js/todo/todo.js"></script>
    <!-- calendar js-->
    <!-- Plugins JS Ends-->
    <!-- Theme js-->
    <script src="../assets/js/script.js"></script>
    <script src="../assets/js/script1.js"></script>
    <script src="../assets/js/theme-customizer/customizer.js"></script>
    <!-- Plugin used-->
  </body>
