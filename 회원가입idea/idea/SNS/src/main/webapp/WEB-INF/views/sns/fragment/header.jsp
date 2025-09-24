<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<header class="site-header">


    
    <nav class="navbar navbar-expand-md navbar-light bg-white border-bottom px-4">
        <div class="container-fluid"> <!-- 전체 폭 컨테이너 -->
            <a class="navbar-brand" href="<c:url value='/'/>"> <!-- 로고 링크 -->
                <img src="<c:url value='/img/logo.png'/>" alt="LOGO" /> <!-- 로고 이미지 -->
            </a>

            <!-- 모바일 메뉴 버튼 -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mainNavbar"
                    aria-controls="mainNavbar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span> <!-- 버튼 아이콘 -->
            </button>

            <!-- 네비게이션 메뉴 -->
            <div class="collapse navbar-collapse justify-content-end" id="mainNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#">고객센터</a>
                    </li>
                    <li class="nav-item">
                        <a href="/user/logout" class="nav-link" name="idata" href="#">마이페이지</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/notice-page'/>">공지사항</a>
                        <!-- 컨트롤러 매핑에 맞춰 value 수정 -->
                    </li>
                </ul>
            </div>
        </div>
    </nav>


  <c:choose>
    <c:when test="${not empty sessionScope.loginUser}">
      <img src="${sessionScope.loginUser.profileImageUrl}" alt="프로필" />
      <span>${sessionScope.loginUser.nickname}</span>
      <a href="/user/logout">로그아웃</a>
    </c:when>
    <c:otherwise>
      <a href="/user/login" name="idata">마이페이지</a>

    </c:otherwise>
  </c:choose>
</header>