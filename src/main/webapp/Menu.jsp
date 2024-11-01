<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-light navbar-light">
                <div class="d-flex align-items-center ms-4 mb-4" style="margin-top:50px;">
                    <div class="position-relative">
                        <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                        <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0">Thành Chè</h6>
                        <span>Quản lý</span>
                    </div>
                </div>
                <div class="navbar-nav w-100">
                	<div class="nav-item dropdown">
                    	<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-users me-2"></i>Nhân viên</a>
                        <div class="dropdown-menu bg-transparent border-0">
                        	<a href="DanhSachNV.jsp" class="dropdown-item">Danh sách nhân viên</a>
                            <a href="NhanVienOut.jsp" class="dropdown-item">Hồ sơ lưu trữ</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Phòng ban</a>
                        <div class="dropdown-menu bg-transparent border-0">
                        	<a href="DanhSachPB.jsp" class="dropdown-item">Danh sách phòng ban</a>
                            <a href="ChamCong.jsp" class="dropdown-item">Chấm công</a>
                            <a href="XepLoai.jsp" class="dropdown-item">Xếp loại</a>
                            <a href="YeuCau.jsp" class="dropdown-item">Các yêu cầu</a>
                            <a href="Luong.jsp" class="dropdown-item">Tính lương</a>
                        </div>
                    </div>
                    <a href="ThongKe.jsp" class="nav-item nav-link"><i class="fa fa-th me-2"></i>Thống kê báo cáo</a>
                    <a href="Logout.jsp" class="nav-item nav-link"><i class="fa fa-door-open me-2"></i>Đăng xuất</a>
                </div>
            </nav>
        </div>
</body>
</html>