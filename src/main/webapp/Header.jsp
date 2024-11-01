<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">		
		<a href="#" class="sidebar-toggler flex-shrink-0">
		    <i class="fa fa-bars"></i>
		</a>
		<form class="d-none d-md-flex ms-4">
		    <input class="form-control border-0" type="search" placeholder="Tìm kiếm">
		</form>
		<div class="navbar-nav align-items-center ms-auto">
		    <div class="nav-item dropdown">
		        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
		            <i class="fa fa-envelope me-lg-2"></i>
		            <span class="d-none d-lg-inline-flex">Tin nhắn</span>
		        </a>
		        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
	                <div class="d-flex align-items-center">
	                    <div class="ms-2">
	                        <h6 class="fw-normal mb-0"><a href="#" class="dropdown-item">Không có tin nhắn nào!</a></h6>
	                    </div>
	                </div>
		            <hr class="dropdown-divider">
		        </div>
		    </div>
		    <div class="nav-item dropdown">
		        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
		            <i class="fa fa-bell me-lg-2"></i>
		            <span class="d-none d-lg-inline-flex">Thông báo</span>
		        </a>
		        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">		            
	                <h6 class="fw-normal mb-0">
	                	<a href="#" class="dropdown-item">Không có yêu cầu nào!</a>
	                </h6>		            
		        </div>
		    </div>
		    <div class="nav-item dropdown">
		        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
		            <img class="rounded-circle me-lg-2" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
		                <span class="d-none d-lg-inline-flex">Thành Chè</span>
		            </a>
		            <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
		                <a href="#" class="dropdown-item">Hồ sơ của tôi</a>
		                <a href="#" class="dropdown-item">Cài đặt</a>
		            </div>
		        </div>
		    </div>
		</div>
</body>
</html>