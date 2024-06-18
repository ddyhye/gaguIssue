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
    <title>Default Dashboard | Mofi - Premium Admin Template By Pixelstrap</title>
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
    <link rel="stylesheet" type="text/css" href="../assets/css/vendors/datatables.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/vendors/date-range-picker/flatpickr.min.css">
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
    <!-- tap on tap ends-->
    <!-- page-wrapper Start-->
    <div class="page-wrapper compact-wrapper" id="pageWrapper">
      <div class="page-header row">
        <div class="header-logo-wrapper col-auto">
          <div class="logo-wrapper"><a href="index.go"><img class="img-fluid for-light" src="../assets/images/logo/logo.png" alt=""/><img class="img-fluid for-dark" src="../assets/images/logo/logo_light.png" alt=""/></a></div>
        </div>
        <div class="col-4 col-xl-4 page-title">
          <h4 class="f-w-700">Default dashboard</h4>
          <nav>
            <ol class="breadcrumb justify-content-sm-start align-items-center mb-0">
              <li class="breadcrumb-item"><a href="index.go"> <i data-feather="home"> </i></a></li>
              <li class="breadcrumb-item f-w-400">Dashboard</li>
              <li class="breadcrumb-item f-w-400 active">Default</li>
            </ol>
          </nav>
        </div>
        <!-- Page Header Start -->
        <%@ include file="common_top.jsp" %>
        <!-- Page Header Ends -->
      </div>
      <!-- Page Body Start-->
      <div class="page-body-wrapper">
        <!-- Page Sidebar Start-->
        <%@ include file="common_sidebar.jsp" %>
        <!-- Page Sidebar Ends-->
        <div class="page-body">
          <!-- Container-fluid starts-->
          <div class="container-fluid default-dashboard"> 
            <div class="row widget-grid">
              <div class="col-xl-5 col-md-6 proorder-xl-1 proorder-md-1">  
                <div class="card profile-greeting p-0">
                  <div class="card-body">
                    <h2>조직도</h2><i class="fa-solid fa-greater-than"></i>
                    <p>Welcome to the Mofi family! We are delighted that you have visited our dashboard.</p><a class="btn" href="index.go">Go Premium</a>
                  </div>
                </div>
              </div>
              <div class="col-xl-3 col-md-6 proorder-xl-2 proorder-md-2">
                <div class="card">
                  <div class="card-header card-no-border pb-0">
                    <div class="header-top">
                      <h4>Opening of leaflets</h4>
                      <div class="dropdown icon-dropdown">
                        <button class="btn dropdown-toggle" id="userdropdown17" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt"></i></button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown17"><a class="dropdown-item" href="#">Weekly</a><a class="dropdown-item" href="#">Monthly</a><a class="dropdown-item" href="#">Yearly</a></div>
                      </div>
                    </div>
                  </div>
                  <div class="card-body pb-0 opening-box">
                    <div class="d-flex align-items-center gap-2"> 
                      <h2>$ 12,463</h2>
                      <div class="d-flex">
                        <p class="mb-0 up-arrow"><i class="fa fa-arrow-up"></i></p><span class="f-w-500 font-success">+ 20.08%</span>
                      </div>
                    </div>
                    <div id="growthchart"> </div>
                  </div>
                </div>
              </div>
              <div class="col-xl-4 col-md-5 proorder-xl-3 proorder-md-3"> 
                <div class="card shifts-char-box">
                  <div class="card-header card-no-border pb-0">
                    <div class="header-top"> 
                      <h4>Shifts Overview  </h4>
                      <div class="d-flex align-items-center gap-3"> 
                        <div class="location-menu dropdown">
                          <button class="btn dropdown-toggle" id="locationdropdown" data-bs-toggle="dropdown" aria-expanded="false">Location</button>
                          <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown"><a class="dropdown-item" href="#">Address Selection</a><a class="dropdown-item" href="#">Geo-Menu</a><a class="dropdown-item" href="#">Place Picker</a></div>
                        </div>
                        <div class="dropdown icon-dropdown">
                          <button class="btn dropdown-toggle" id="userdropdown16" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt"></i></button>
                          <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown16"><a class="dropdown-item" href="#">Weekly</a><a class="dropdown-item" href="#">Monthly</a><a class="dropdown-item" href="#">Yearly</a></div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card-body">
                    <div class="row"> 
                      <div class="col-5"> 
                        <div class="overview" id="shifts-overview"></div>
                      </div>
                      <div class="col-7 shifts-overview">
                        <div class="d-flex gap-2"> 
                          <div class="flex-shrink-0"><span class="bg-primary"> </span></div>
                          <div class="flex-grow-1"> 
                            <h6>New</h6>
                          </div><span>86</span>
                        </div>
                        <div class="d-flex gap-2"> 
                          <div class="flex-shrink-0"><span class="bg-secondary"></span></div>
                          <div class="flex-grow-1"> 
                            <h6>Waiting for approval</h6>
                          </div><span>210</span>
                        </div>
                        <div class="d-flex gap-2"> 
                          <div class="flex-shrink-0"><span class="bg-warning"> </span></div>
                          <div class="flex-grow-1"> 
                            <h6>Assigned</h6>
                          </div><span>95</span>
                        </div>
                        <div class="d-flex gap-2"> 
                          <div class="flex-shrink-0"><span class="bg-tertiary"></span></div>
                          <div class="flex-grow-1"> 
                            <h6>Cancelled</h6>
                          </div><span>37</span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-xl-7 proorder-xl-5 box-col-7 proorder-md-5"> 
                <div class="card">
                  <div class="card-header card-no-border pb-0">
                    <div class="header-top">
                      <h4>Projects</h4>
                      <div class="dropdown icon-dropdown">
                        <button class="btn dropdown-toggle" id="userdropdown0" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt"></i></button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown0"><a class="dropdown-item" href="#">Weekly</a><a class="dropdown-item" href="#">Monthly</a><a class="dropdown-item" href="#">Yearly</a></div>
                      </div>
                    </div>
                  </div>
                  <div class="card-body pt-0 projects px-0">
                    <div class="table-responsive theme-scrollbar">
                      <table class="table display" id="selling-product" style="width:100%">
                        <thead>
                          <tr> 
                            <th> 
                              <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="">
                                <label class="form-check-label"></label>
                              </div>
                            </th>
                            <th>Files Name</th>
                            <th>File Type</th>
                            <th>Date</th>
                            <th>Sizes</th>
                            <th>Author  </th>
                            <th>Actions</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>
                              <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="">
                                <label class="form-check-label"></label>
                              </div>
                            </td>
                            <td>
                              <div class="d-flex align-items-center">
                                <div class="flex-shrink-0"><img src="../assets/images/dashboard/project/1.png" alt=""></div>
                                <div class="flex-grow-1 ms-2"><a href="product-page.go">
                                    <h6>Rules Post on Dribble</h6></a></div>
                              </div>
                            </td>
                            <td class="project-dot">
                              <div class="d-flex"> 
                                <div class="flex-shrink-0"><span class="bg-primary"></span></div>
                                <div class="flex-grow-1">
                                  <h6>Document</h6>
                                </div>
                              </div>
                            </td>
                            <td> 12 Aug 2024</td>
                            <td> 200 Kb</td>
                            <td>Monry Hasu</td>
                            <td class="text-center"> 
                              <div class="dropdown icon-dropdown">
                                <button class="btn dropdown-toggle" id="userdropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt"></i></button>
                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown"><a class="dropdown-item" href="#">Weekly</a><a class="dropdown-item" href="#">Monthly</a><a class="dropdown-item" href="#">Yearly</a></div>
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="">
                                <label class="form-check-label"></label>
                              </div>
                            </td>
                            <td>
                              <div class="d-flex align-items-center">
                                <div class="flex-shrink-0"><img src="../assets/images/dashboard/project/2.png" alt=""></div>
                                <div class="flex-grow-1 ms-2"><a href="product-page.go">
                                    <h6>Login & Sign Up Ui</h6></a></div>
                              </div>
                            </td>
                            <td class="project-dot">
                              <div class="d-flex">
                                <div class="flex-shrink-0"><span class="bg-secondary"></span></div>
                                <div class="flex-grow-1">
                                  <h6>Animation</h6>
                                </div>
                              </div>
                            </td>
                            <td> 19 Mar 2024</td>
                            <td> 3,5 Mb</td>
                            <td>Alex Madus</td>
                            <td class="text-center"> 
                              <div class="dropdown icon-dropdown">
                                <button class="btn dropdown-toggle" id="userdropdown2" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt"></i></button>
                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown2"><a class="dropdown-item" href="#">Weekly</a><a class="dropdown-item" href="#">Monthly</a><a class="dropdown-item" href="#">Yearly</a></div>
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="">
                                <label class="form-check-label"></label>
                              </div>
                            </td>
                            <td>
                              <div class="d-flex align-items-center">
                                <div class="flex-shrink-0"><img src="../assets/images/dashboard/project/3.png" alt=""></div>
                                <div class="flex-grow-1 ms-2"><a href="product-page.go">
                                    <h6>Nft website Pages</h6></a></div>
                              </div>
                            </td>
                            <td class="project-dot">
                              <div class="d-flex">
                                <div class="flex-shrink-0"><span class="bg-warning"></span></div>
                                <div class="flex-grow-1">
                                  <h6>Image</h6>
                                </div>
                              </div>
                            </td>
                            <td> 30 Jun 2024</td>
                            <td> 800 Kb</td>
                            <td>Nomru Nalij</td>
                            <td class="text-center"> 
                              <div class="dropdown icon-dropdown">
                                <button class="btn dropdown-toggle" id="userdropdown3" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt"></i></button>
                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown3"><a class="dropdown-item" href="#">Weekly</a><a class="dropdown-item" href="#">Monthly</a><a class="dropdown-item" href="#">Yearly</a></div>
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="">
                                <label class="form-check-label"></label>
                              </div>
                            </td>
                            <td>
                              <div class="d-flex align-items-center">
                                <div class="flex-shrink-0"><img src="../assets/images/dashboard/project/4.png" alt=""></div>
                                <div class="flex-grow-1 ms-2"><a href="product-page.go">
                                    <h6>Square Dashboard</h6></a></div>
                              </div>
                            </td>
                            <td class="project-dot">
                              <div class="d-flex">
                                <div class="flex-shrink-0"><span class="bg-tertiary"></span></div>
                                <div class="flex-grow-1">
                                  <h6>Document</h6>
                                </div>
                              </div>
                            </td>
                            <td> 24 Oct 2024</td>
                            <td> 2,8 Mb</td>
                            <td>Willium sen</td>
                            <td class="text-center"> 
                              <div class="dropdown icon-dropdown">
                                <button class="btn dropdown-toggle" id="userdropdown4" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt"></i></button>
                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown4"><a class="dropdown-item" href="#">Weekly</a><a class="dropdown-item" href="#">Monthly</a><a class="dropdown-item" href="#">Yearly</a></div>
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="">
                                <label class="form-check-label"></label>
                              </div>
                            </td>
                            <td>
                              <div class="d-flex align-items-center">
                                <div class="flex-shrink-0"><img src="../assets/images/dashboard/project/4.png" alt=""></div>
                                <div class="flex-grow-1 ms-2"><a href="product-page.go">
                                    <h6>Square Dashboard</h6></a></div>
                              </div>
                            </td>
                            <td class="project-dot">
                              <div class="d-flex">
                                <div class="flex-shrink-0"><span class="bg-tertiary"></span></div>
                                <div class="flex-grow-1">
                                  <h6>Document</h6>
                                </div>
                              </div>
                            </td>
                            <td> 24 Oct 2024</td>
                            <td> 2,8 Mb</td>
                            <td>Willium sen</td>
                            <td class="text-center"> 
                              <div class="dropdown icon-dropdown">
                                <button class="btn dropdown-toggle" id="userdropdown5" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt"></i></button>
                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown5"><a class="dropdown-item" href="#">Weekly</a><a class="dropdown-item" href="#">Monthly</a><a class="dropdown-item" href="#">Yearly</a></div>
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="">
                                <label class="form-check-label"></label>
                              </div>
                            </td>
                            <td>
                              <div class="d-flex align-items-center">
                                <div class="flex-shrink-0"><img src="../assets/images/dashboard/project/1.png" alt=""></div>
                                <div class="flex-grow-1 ms-2"><a href="product-page.go">
                                    <h6>Rules Post on Dribble</h6></a></div>
                              </div>
                            </td>
                            <td class="project-dot">
                              <div class="d-flex"> 
                                <div class="flex-shrink-0"><span class="bg-primary"></span></div>
                                <div class="flex-grow-1">
                                  <h6>Document</h6>
                                </div>
                              </div>
                            </td>
                            <td> 12 Aug 2024</td>
                            <td> 200 Kb</td>
                            <td>Monry Hasu</td>
                            <td class="text-center"> 
                              <div class="dropdown icon-dropdown">
                                <button class="btn dropdown-toggle" id="userdropdown6" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt"></i></button>
                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown6"><a class="dropdown-item" href="#">Weekly</a><a class="dropdown-item" href="#">Monthly</a><a class="dropdown-item" href="#">Yearly</a></div>
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="">
                                <label class="form-check-label"></label>
                              </div>
                            </td>
                            <td>
                              <div class="d-flex align-items-center">
                                <div class="flex-shrink-0"><img src="../assets/images/dashboard/project/2.png" alt=""></div>
                                <div class="flex-grow-1 ms-2"><a href="product-page.go">
                                    <h6>Login & Sign Up Ui</h6></a></div>
                              </div>
                            </td>
                            <td class="project-dot">
                              <div class="d-flex">
                                <div class="flex-shrink-0"><span class="bg-secondary"></span></div>
                                <div class="flex-grow-1">
                                  <h6>Animation</h6>
                                </div>
                              </div>
                            </td>
                            <td> 19 Mar 2024</td>
                            <td> 3,5 Mb</td>
                            <td>Alex Madus</td>
                            <td class="text-center"> 
                              <div class="dropdown icon-dropdown">
                                <button class="btn dropdown-toggle" id="userdropdown7" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt"></i></button>
                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown7"><a class="dropdown-item" href="#">Weekly</a><a class="dropdown-item" href="#">Monthly</a><a class="dropdown-item" href="#">Yearly</a></div>
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="">
                                <label class="form-check-label"></label>
                              </div>
                            </td>
                            <td>
                              <div class="d-flex align-items-center">
                                <div class="flex-shrink-0"><img src="../assets/images/dashboard/project/4.png" alt=""></div>
                                <div class="flex-grow-1 ms-2"><a href="product-page.go">
                                    <h6>Square Dashboard</h6></a></div>
                              </div>
                            </td>
                            <td class="project-dot">
                              <div class="d-flex">
                                <div class="flex-shrink-0"><span class="bg-tertiary"></span></div>
                                <div class="flex-grow-1">
                                  <h6>Document</h6>
                                </div>
                              </div>
                            </td>
                            <td> 24 Oct 2024</td>
                            <td> 2,8 Mb</td>
                            <td>Willium sen</td>
                            <td class="text-center"> 
                              <div class="dropdown icon-dropdown">
                                <button class="btn dropdown-toggle" id="userdropdown8" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt"></i></button>
                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown8"><a class="dropdown-item" href="#">Weekly</a><a class="dropdown-item" href="#">Monthly</a><a class="dropdown-item" href="#">Yearly</a></div>
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="">
                                <label class="form-check-label"></label>
                              </div>
                            </td>
                            <td>
                              <div class="d-flex align-items-center">
                                <div class="flex-shrink-0"><img src="../assets/images/dashboard/project/3.png" alt=""></div>
                                <div class="flex-grow-1 ms-2"><a href="product-page.go">
                                    <h6>Nft website Pages</h6></a></div>
                              </div>
                            </td>
                            <td class="project-dot">
                              <div class="d-flex">
                                <div class="flex-shrink-0"><span class="bg-warning"></span></div>
                                <div class="flex-grow-1">
                                  <h6>Image</h6>
                                </div>
                              </div>
                            </td>
                            <td> 30 Jun 2024</td>
                            <td> 800 Kb</td>
                            <td>Nomru Nalij</td>
                            <td class="text-center"> 
                              <div class="dropdown icon-dropdown">
                                <button class="btn dropdown-toggle" id="userdropdown9" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt9"></i></button>
                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown9"><a class="dropdown-item" href="#">Weekly</a><a class="dropdown-item" href="#">Monthly</a><a class="dropdown-item" href="#">Yearly</a></div>
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="">
                                <label class="form-check-label"></label>
                              </div>
                            </td>
                            <td>
                              <div class="d-flex align-items-center">
                                <div class="flex-shrink-0"><img src="../assets/images/dashboard/project/1.png" alt=""></div>
                                <div class="flex-grow-1 ms-2"><a href="product-page.go">
                                    <h6>Rules Post on Dribble</h6></a></div>
                              </div>
                            </td>
                            <td class="project-dot">
                              <div class="d-flex">
                                <div class="flex-shrink-0"><span class="bg-primary"></span></div>
                                <div class="flex-grow-1">
                                  <h6>Document</h6>
                                </div>
                              </div>
                            </td>
                            <td> 12 Aug 2024</td>
                            <td> 200 Kb</td>
                            <td>Monry Hasu</td>
                            <td class="text-center"> 
                              <div class="dropdown icon-dropdown">
                                <button class="btn dropdown-toggle" id="userdropdown10" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt"></i></button>
                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown10"><a class="dropdown-item" href="#">Weekly</a><a class="dropdown-item" href="#">Monthly</a><a class="dropdown-item" href="#">Yearly</a></div>
                              </div>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-xl-5 col-md-7 proorder-xl-4 box-col-5 proorder-md-6"> 
                <div class="card">
                  <div class="card-header card-no-border pb-0">
                    <div class="header-top">
                      <h4>Customer Transaction</h4>
                      <div class="dropdown icon-dropdown">
                        <button class="btn dropdown-toggle" id="userdropdown11" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt"></i></button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown11"><a class="dropdown-item" href="#">Weekly</a><a class="dropdown-item" href="#">Monthly</a><a class="dropdown-item" href="#">Yearly</a></div>
                      </div>
                    </div>
                  </div>
                  <div class="card-body pb-0">
                    <div id="customer-transaction"></div>
                  </div>
                </div>
              </div>
              <div class="col-xxl-3 col-xl-6 col-md-5 box-col-6 proorder-xl-6 proorder-md-7"> 
                <div class="card">
                  <div class="card-header card-no-border pb-0">
                    <div class="header-top">
                      <h4>Notifications</h4>
                      <div class="dropdown icon-dropdown">
                        <button class="btn dropdown-toggle" id="userdropdown12" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt"></i></button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown12"><a class="dropdown-item" href="#">Weekly</a><a class="dropdown-item" href="#">Monthly</a><a class="dropdown-item" href="#">Yearly</a></div>
                      </div>
                    </div>
                  </div>
                  <div class="card-body">
                    <ul class="notification-box">
                      <li class="d-flex"> 
                        <div class="flex-shrink-0 bg-light-primary"><img src="../assets/images/dashboard/icon/wallet.png" alt="Wallet"></div>
                        <div class="flex-grow-1"> <a href="private-chat.go">
                            <h5>New daily offer added</h5></a>
                          <p class="text-truncate">New user-only offer added</p>
                        </div><span>10 Sep,2024</span>
                      </li>
                      <li class="d-flex"> 
                        <div class="flex-shrink-0 bg-light-info"><img src="../assets/images/dashboard/icon/shield-dne.png" alt="Shield-dne"></div>
                        <div class="flex-grow-1"> <a href="private-chat.go">
                            <h5>Product Evaluation</h5></a>
                          <p class="text-truncate">Changed to a new workflow</p>
                        </div><span>12 Oct,2024</span>
                      </li>
                      <li class="d-flex"> 
                        <div class="flex-shrink-0 bg-light-warning"> <img src="../assets/images/dashboard/icon/graph.png" alt="Graph"></div>
                        <div class="flex-grow-1"> <a href="private-chat.go">
                            <h5>Return of a Product</h5></a>
                          <p class="text-truncate">452 items were returned</p>
                        </div><span>15 Mar,2024</span>
                      </li>
                      <li class="d-flex"> 
                        <div class="flex-shrink-0 bg-light-tertiary"><img src="../assets/images/dashboard/icon/ticket-star.png" alt="Ticket-star"></div>
                        <div class="flex-grow-1"> <a href="private-chat.go">
                            <h5>Recently Paid</h5></a>
                          <p class="text-truncate">Mastercard payment of $343  </p>
                        </div><span>20 Jun,2024</span>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="col-xxl-5 col-xl-6 box-col-6 proorder-xl-7 proorder-md-8"> 
                <div class="card">
                  <div class="card-header card-no-border pb-0">
                    <div class="header-top">
                      <h4>Upcoming Appointments</h4>
                    </div>
                  </div>
                  <div class="card-body appointments relative">
                    <div class="row"> 
                      <div class="col-5"> 
                        <ul class="appointments-user">
                          <li class="d-flex align-items-center">
                            <div class="flex-shrink-0"><img src="../assets/images/dashboard/user/05.png" alt=""></div>
                            <div class="flex-grow-1"><a href="private-chat.go">
                                <h5>John Elliot</h5></a>
                              <p>21 Oct 2024<span>(15:55 AM)</span></p>
                            </div>
                          </li>
                          <li class="d-flex align-items-center">
                            <div class="flex-shrink-0"><img src="../assets/images/dashboard/user/06.png" alt=""></div>
                            <div class="flex-grow-1"><a href="private-chat.go">
                                <h5>Ashley Hart</h5></a>
                              <p>12 Oct 2024<span>(10:20 AM)</span></p>
                            </div>
                          </li>
                          <li class="d-flex align-items-center">
                            <div class="flex-shrink-0"><img src="../assets/images/dashboard/user/07.png" alt=""></div>
                            <div class="flex-grow-1"><a href="private-chat.go">
                                <h5>Anna lverson</h5></a>
                              <p>05 Oct 2024<span>(14:30 AM)</span></p>
                            </div>
                          </li>
                          <li class="d-flex align-items-center">
                            <div class="flex-shrink-0"><img src="../assets/images/dashboard/user/08.png" alt=""></div>
                            <div class="flex-grow-1"><a href="private-chat.go">
                                <h5>Dana Lemon</h5></a>
                              <p>01 Oct 2024     <span>(18:45 AM)</span></p>
                            </div>
                          </li>
                        </ul>
                      </div>
                      <div class="col-7"> 
                        <div class="datepicker-here mod" id="datepicker"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-xxl-4 col-xl-5 col-md-7 box-col-5 proorder-xl-10 proorder-md-4"> 
                <div class="card">
                  <div class="card-header card-no-border pb-0">   
                    <div class="header-top">
                      <h4>Active Members     </h4>
                      <div class="dropdown icon-dropdown">
                        <button class="btn dropdown-toggle" id="userdropdown13" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt"></i></button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown13"><a class="dropdown-item" href="#">Weekly</a><a class="dropdown-item" href="#">Monthly</a><a class="dropdown-item" href="#">Yearly</a></div>
                      </div>
                    </div>
                  </div>
                  <div class="card-body active-members px-0 pb-0">
                    <div class="table-responsive theme-scrollbar">
                      <table class="table display" style="width:100%">
                        <thead>
                          <tr>
                            <th>Member Profile</th>
                            <th>Todayâs hours    </th>
                            <th class="text-center">Status</th>
                          </tr>
                        </thead>
                        <tbody>   
                          <tr>
                            <td>
                              <div class="d-flex align-items-center">
                                <div class="flex-shrink-0"><img src="../assets/images/dashboard/user/01.jpg" alt=""></div>
                                <div class="flex-grow-1"><a href="product.go">
                                    <h5>Joshua Wood</h5></a><span>UI/UX Designer</span></div>
                              </div>
                            </td>
                            <td> 02 hours</td>
                            <td>
                              <p class="members-box background-light-primary text-center b-light-primary font-primary"> Away</p>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="d-flex align-items-center">
                                <div class="flex-shrink-0"><img src="../assets/images/dashboard/user/02.jpg" alt=""></div>
                                <div class="flex-grow-1"><a href="product.go">
                                    <h5>Ashley Hart</h5></a><span>Website Design</span></div>
                              </div>
                            </td>
                            <td> 05 hours</td>
                            <td>
                              <p class="members-box background-light-secondary text-center b-light-secondary font-secondary">Working</p>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="d-flex align-items-center">
                                <div class="flex-shrink-0"><img src="../assets/images/dashboard/user/03.jpg" alt=""></div>
                                <div class="flex-grow-1"><a href="product.go">
                                    <h5>Anna lverson </h5></a><span>UX Research</span></div>
                              </div>
                            </td>
                            <td> 10 hours</td>
                            <td> 
                              <p class="members-box background-light-secondary text-center b-light-secondary font-secondary"> Working</p>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="d-flex align-items-center">
                                <div class="flex-shrink-0"><img src="../assets/images/dashboard/user/04.jpg" alt=""></div>
                                <div class="flex-grow-1"><a href="product.go">
                                    <h5>Ron Dayley</h5></a><span>234+ Online</span></div>
                              </div>
                            </td>
                            <td> 15 hours</td>
                            <td>
                              <p class="members-box background-light-primary text-center b-light-primary font-primary"> Away</p>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-xxl-7 col-xl-12 box-col-12 proorder-xl-8 proorder-md-9"> 
                <div class="card">
                  <div class="card-header card-no-border pb-0">
                    <div class="header-top">
                      <h4>Sales Statistic</h4>
                      <div class="dropdown icon-dropdown">
                        <button class="btn dropdown-toggle" id="userdropdown14" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt"></i></button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown14"><a class="dropdown-item" href="#">Weekly</a><a class="dropdown-item" href="#">Monthly</a><a class="dropdown-item" href="#">Yearly</a></div>
                      </div>
                    </div>
                  </div>
                  <div class="card-body sale-statistic">
                    <div class="row"> 
                      <div class="col-3 statistic-icon">    
                        <div class="light-card balance-card widget-hover">
                          <div class="icon-box"><img src="../assets/images/dashboard/icon/customers.png" alt=""></div>
                          <div> <span class="f-w-500 f-light">Customers</span>
                            <h5 class="mt-1 mb-0">1.736</h5>
                          </div>
                          <div class="ms-auto text-end">
                            <div class="dropdown icon-dropdown">
                              <button class="btn dropdown-toggle" id="incomedropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt"></i></button>
                              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="incomedropdown"><a class="dropdown-item" href="#">Today</a><a class="dropdown-item" href="#">Tomorrow</a><a class="dropdown-item" href="#">Yesterday </a></div>
                            </div><span class="f-w-600 font-success">+3,7%</span>
                          </div>
                        </div>
                      </div>
                      <div class="col-3 statistic-icon"> 
                        <div class="light-card balance-card widget-hover">
                          <div class="icon-box"><img src="../assets/images/dashboard/icon/revenue.png" alt=""></div>
                          <div> <span class="f-w-500 f-light">Revenue</span>
                            <h5 class="mt-1 mb-0">$9.247   </h5>
                          </div>
                          <div class="ms-auto text-end">
                            <div class="dropdown icon-dropdown">
                              <button class="btn dropdown-toggle" id="expensedropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt"></i></button>
                              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="expensedropdown"><a class="dropdown-item" href="#">Today</a><a class="dropdown-item" href="#">Tomorrow</a><a class="dropdown-item" href="#">Yesterday </a></div>
                            </div><span class="f-w-600 font-danger">-0,10%</span>
                          </div>
                        </div>
                      </div>
                      <div class="col-3 statistic-icon">
                        <div class="light-card balance-card widget-hover">
                          <div class="icon-box"><img src="../assets/images/dashboard/icon/profit.png" alt=""></div>
                          <div> <span class="f-w-500 f-light">Profit</span>
                            <h5 class="mt-1 mb-0">80%</h5>
                          </div>
                          <div class="ms-auto text-end">
                            <div class="dropdown icon-dropdown">
                              <button class="btn dropdown-toggle" id="cashbackdropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt"></i></button>
                              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="cashbackdropdown"><a class="dropdown-item" href="#">Today</a><a class="dropdown-item" href="#">Tomorrow</a><a class="dropdown-item" href="#">Yesterday </a></div>
                            </div><span class="f-w-600 font-success">+11,6%</span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div id="chart-dash-2-line"></div>
                  </div>
                </div>
              </div>
              <div class="col-xxl-5 col-xl-7 box-col-7 proorder-xl-9 proorder-md-10"> 
                <div class="card">
                  <div class="card-header card-no-border pb-0">
                    <div class="header-top">
                      <h4>Sales by Product</h4>
                      <div class="dropdown icon-dropdown">
                        <button class="btn dropdown-toggle" id="userdropdown15" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt"></i></button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown15"><a class="dropdown-item" href="#">Weekly</a><a class="dropdown-item" href="#">Monthly</a><a class="dropdown-item" href="#">Yearly</a></div>
                      </div>
                    </div>
                  </div>
                  <div class="card-body sales-product px-0 pb-0">
                    <div class="table-responsive theme-scrollbar">
                      <table class="table display" style="width:100%">
                        <thead>
                          <tr>
                            <th>Files Name</th>
                            <th>Amount</th>
                            <th>% Sold</th>
                            <th>Progressbar</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>
                              <div class="d-flex align-items-center">
                                <div class="flex-shrink-0"><img src="../assets/images/dashboard/product/1.png" alt=""></div>
                                <div class="flex-grow-1"><a href="list-products.go">
                                    <h5>Touch sensor Lamp</h5></a></div>
                              </div>
                            </td>
                            <td> $ 7.938</td>
                            <td> 52.93%</td>
                            <td>
                              <div class="progress progress-striped-primary b-r-2">
                                <div class="progress-bar" role="progressbar" style="width: 70%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="d-flex align-items-center">
                                <div class="flex-shrink-0"><img src="../assets/images/dashboard/product/2.png" alt=""></div>
                                <div class="flex-grow-1"><a href="list-products.go">
                                    <h5>Bluetooth headphone</h5></a></div>
                              </div>
                            </td>
                            <td> $ 2.937</td>
                            <td> 12.52%</td>
                            <td>
                              <div class="progress progress-striped-secondary b-r-2">
                                <div class="progress-bar" role="progressbar" style="width: 40%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="d-flex align-items-center">
                                <div class="flex-shrink-0"><img src="../assets/images/dashboard/product/3.png" alt=""></div>
                                <div class="flex-grow-1"><a href="list-products.go">
                                    <h5>Apple watch series 8</h5></a></div>
                              </div>
                            </td>
                            <td> $ 1.923</td>
                            <td> 84.12%</td>
                            <td>
                              <div class="progress progress-striped-warning b-r-2">
                                <div class="progress-bar" role="progressbar" style="width: 60%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="d-flex align-items-center">
                                <div class="flex-shrink-0"><img src="../assets/images/dashboard/product/4.png" alt=""></div>
                                <div class="flex-grow-1"><a href="list-products.go">
                                    <h5>Macbook Pro M1</h5></a></div>
                              </div>
                            </td>
                            <td> $ 5.538</td>
                            <td> 01.41%</td>
                            <td>
                              <div class="progress progress-striped-tertiary b-r-2">
                                <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="d-flex align-items-center">
                                <div class="flex-shrink-0"><img src="../assets/images/dashboard/product/5.png" alt=""></div>
                                <div class="flex-grow-1"><a href="list-products.go">
                                    <h5>iphone 12 Pro max</h5></a></div>
                              </div>
                            </td>
                            <td> $ 8.258</td>
                            <td> 14.34%</td>
                            <td>
                              <div class="progress progress-striped-primary b-r-2">
                                <div class="progress-bar" role="progressbar" style="width: 50%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Container-fluid Ends-->
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
    <script src="../assets/js/chart/apex-chart/apex-chart.js"></script>
    <script src="../assets/js/chart/apex-chart/stock-prices.js"></script>
    <script src="../assets/js/chart/apex-chart/moment.min.js"></script>
    <script src="../assets/js/notify/bootstrap-notify.min.js"></script>
    <!-- calendar js-->
    <script src="../assets/js/dashboard/default.js"></script>
    <script src="../assets/js/notify/index.js"></script>
    <script src="../assets/js/datatable/datatables/jquery.dataTables.min.js"></script>
    <script src="../assets/js/datatable/datatables/datatable.custom.js"></script>
    <script src="../assets/js/datatable/datatables/datatable.custom1.js"></script>
    <script src="../assets/js/datepicker/date-range-picker/moment.min.js"></script>
    <script src="../assets/js/datepicker/date-range-picker/datepicker-range-custom.js"></script>
    <script src="../assets/js/typeahead/handlebars.js"></script>
    <script src="../assets/js/typeahead/typeahead.bundle.js"></script>
    <script src="../assets/js/typeahead/typeahead.custom.js"></script>
    <script src="../assets/js/typeahead-search/handlebars.js"></script>
    <script src="../assets/js/typeahead-search/typeahead-custom.js"></script>
    <script src="../assets/js/height-equal.js"></script>
    <script src="../assets/js/animation/wow/wow.min.js"></script>
    <!-- Plugins JS Ends-->
    <!-- Theme js-->
    <script src="../assets/js/script.js"></script>
    <script src="../assets/js/script1.js"></script>
    <script src="../assets/js/theme-customizer/customizer.js"></script>
    <!-- Plugin used-->
    <script>new WOW().init();</script>
  </body>
</html>