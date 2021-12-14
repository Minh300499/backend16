<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<nav class="navbar navbar-expand-xl">
            <div class="container h-100">
                <a class="navbar-brand" href="/admin">
                    <h1 class="tm-site-title mb-0">  </h1>
                </a>
                <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-bars tm-nav-icon"></i>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto h-100">
                        <li class="nav-item">
                            <a class="nav-link active" href="/admin/">
                                <i class="fas fa-tachometer-alt"></i>
                                Bảng điều khiển
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item dropdown">

                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                <i class="far fa-file-alt"></i>
                                <span>
                                    Báo cáo <i class="fas fa-angle-down"></i>
                                </span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Báo cáo tuần</a>
                                <a class="dropdown-item" href="#">Báo cáo tháng</a>
                                <a class="dropdown-item" href="#">Báo cáo năm</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/admin/product">
                                <i class="fas fa-shopping-cart"></i>
                                Sản phẩm
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="/admin/accounts">
                                <i class="far fa-user"></i>
                                Tài khoản
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-cog"></i>
                                <span>
                                    Cài đặt <i class="fas fa-angle-down"></i>
                                </span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Hồ sơ</a>
                                <a class="dropdown-item" href="#">Thanh toán</a>
                                <a class="dropdown-item" href="#">Tùy chỉnh</a>
                            </div>
                        </li>
                    </ul>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link d-block" href="/admin/login">
                                Admin, <b>Đăng nhập</b>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </nav>