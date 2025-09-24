<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
</head>

<body>

 <form action="/user/login" method="post">
    <input type="text" name="phonenumber" placeholder="전화번호" required />
    <input type="password" name="password" placeholder="비밀번호" required />
    <button type="submit">로그인</button>
  </form>

  <c:if test="${not empty error}">
    <div style="color:red">${error}</div>
  </c:if>

</body>
</html>
