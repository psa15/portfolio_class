<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title> DocMall Shopping</title>
	
	<!-- 부트스트랩 css  cdn 버전 -> footer아래에 common.jsp로 참조
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    -->
    
	<meta name="theme-color" content="#563d7c">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
  </head>
  <body>
    
	<!-- header -->
	<%@include file="/WEB-INF/views/include/header.jsp" %>	
	
	<div class="container">
		<c:if test="${m_id != null}">
		 <h3>아이디 찾기</h3><br><br>
		 <div class=" mb-3 text-center">	
			<p>ID : <c:out value="${fn:substring(m_id, 0, fn:length(m_id) - 4)}" /> ****</p><br>
			전체 아이디는 고객센터로 문의해주세요	  		
		 </div>
		 <div class="text-center">
			<button class="btn btn-lg btn-primary" id="btnLogin" type="button">로그인</button>
	 		<button class="btn btn-lg btn-primary" id="btnNewPw" type="button">비밀번호 발급</button>
	     </div>
     	</c:if>
     	<c:if test="${mail != null}">
		 <h3>임시비밀번호 발급 완료</h3><br><br>
		 <div class=" mb-3 text-center">	
			<p>임시 비밀번호를 메일로 전송했습니다.</p><br>
			로그인 하신 후 비밀번호를 변경해 주세요  		
		 </div>
		 <div class="text-center">
			<button class="btn btn-lg btn-primary" id="btnLogin" type="button">로그인</button>
	     </div>
     	</c:if>
     
     
	
	  <!-- footer -->
	  <%@include file="/WEB-INF/views/include/footer.jsp" %>
	</div>
	
	<!-- bootstrap 버전 및 여러 파일들 -->
	<%@include file="/WEB-INF/views/include/common.jsp" %>
    
    <script>

      $(document).ready(function(){
    	
    	//비밀번호 찾기 버튼
        $("#btnNewPw").on("click", function(){
          location.href = "/member/newPw";
        });
    	
        //로그인 버튼
        $("#btnLogin").on("click", function(){
          location.href = "/member/login";
        });

      });

    </script>
    
  </body>
</html>