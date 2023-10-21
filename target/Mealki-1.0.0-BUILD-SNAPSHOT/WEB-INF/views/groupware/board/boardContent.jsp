<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밀키의 냉장고</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Skydash Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/maincss/vendors/feather/feather.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/maincss/vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/maincss/vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/maincss/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/maincss/vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/maincss/js/select.dataTables.min.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/maincss/css/vert	ical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/maincss/images/favicon-16x16.png" />

  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/maincss/css/blank.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/groupware/board.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/groupware/summernote/summernote-lite.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery-3.6.3.js"></script>
  


</head>
<body>

  <div class="container-scroller">
  
<!-- 헤더, 사이드바,개인설정 시작 
	사이드바와 개인설정은 sidebar에 같이 있음-->
    <jsp:include page="../../main/top.jsp" /> 
    <jsp:include page="../../main/sidebar.jsp" /> 
<!-- 헤더, 사이드바,개인설정 끝 -->
 
      
<!-- 본문시작 -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="row">
                <div class="col-12 col-xl-8 mb-4 mb-xl-0">
<!--  제목을 적어주세요 -->
                  <h3 class="font-weight-bold">공지사항</h3>
                </div>
                
          <div class="contentbody" > 
<!--  본문 내용 시작 -->
<article id="table_content">
	<table border="1" id="content">
		<tr><th>제목</th><td>&nbsp;&nbsp;${boardDTO.bo_title}</td></tr>
		<tr><th>작성일</th><td>&nbsp;&nbsp;<fmt:formatDate value="${boardDTO.bo_date}" pattern="yyyy.MM.dd"/></td></tr>
		<tr><th>조회수</th><td>&nbsp;&nbsp;${boardDTO.bo_count}</td></tr>
		<tr><th>작성자</th><td>&nbsp;&nbsp;${boardDTO.bo_name}</td></tr>
		<tr><th style="height: 500px;">내용</th><td style="vertical-align: top;">&nbsp;&nbsp;${boardDTO.bo_content}</td></tr>		
		<tr><th style="height: 50px;">첨부파일</th>
		<td colspan="3"><a href="${pageContext.request.contextPath}/resources/groupware/upload/${boardDTO.file}" download>&nbsp;&nbsp;${boardDTO.file}</a></td></tr>		 
	</table>
	<div id="table_button3">
		<c:if test="${! empty sessionScope.emp_num }">
				<input type="button" value="글목록" class="btn btn-primary" style="color: #fff; background-color: #4B49AC; border-color: #4B49AC;"
		 		onclick="location.href='${pageContext.request.contextPath}/groupware/board/noticeList'"><br>	
		<c:set var="bo_name" value="${sessionScope.dept_num == 100 ? 'R&D' : sessionScope.dept_num == 200 ? '영업부' : sessionScope.dept_num == 300 ? '생산부' : 
						             sessionScope.dept_num == 400 ? '자재부' : sessionScope.dept_num == 500 ? '인사부' : sessionScope.dept_num == 600 ? '전산부' : ''} ${sessionScope.emp_Kname}" />	
		<c:if test="${boardDTO.bo_name eq bo_name}">	
				<input type="button" value="글수정" class="btn btn-primary" style="color: #fff; background-color: #4B49AC; border-color: #4B49AC; margin-top: 5px;"
			 	onclick="updateBoard('${pageContext.request.contextPath}/groupware/board/boardUpdate?bo_num=${boardDTO.bo_num}')"><br>
				<input type="button" value="글삭제" class="btn btn-primary" style="color: #fff; background-color: #4B49AC; border-color: #4B49AC; margin-top: 5px;"
			 	onclick="deleteBoard('${pageContext.request.contextPath}/groupware/board/boardDelete?bo_num=${boardDTO.bo_num}')"><br> 			
		</c:if>		
		</c:if>
	</div>

</article>
			
<!--  본문내용 끝 -->    
        
          </div>
<!-- 페이징하실거면 여기서 시작 -->

<!-- 페이징 끝 -->
            </div>
            
          </div>
          
        </div>
        
<!-- 이 밑으로 무언가 쓰지 마세요 페이징도 이 위에서 처리되야함. -->
        
        
<!-- 푸터시작 -->
     <jsp:include page="../../main/footer.jsp" /> 
<!--  푸터 끝 -->

<!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>   
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="${pageContext.request.contextPath}/resources/maincss/vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="${pageContext.request.contextPath}/resources/maincss/vendors/chart.js/Chart.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/maincss/vendors/datatables.net/jquery.dataTables.js"></script>
  <script src="${pageContext.request.contextPath}/resources/maincss/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
  <script src="${pageContext.request.contextPath}/resources/maincss/js/dataTables.select.min.js"></script>

  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="${pageContext.request.contextPath}/resources/maincss/js/off-canvas.js"></script>
  <script src="${pageContext.request.contextPath}/resources/maincss/js/hoverable-collapse.js"></script>
  <script src="${pageContext.request.contextPath}/resources/maincss/js/template.js"></script>
  <script src="${pageContext.request.contextPath}/resources/maincss/js/settings.js"></script>
  <script src="${pageContext.request.contextPath}/resources/maincss/js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="${pageContext.request.contextPath}/resources/maincss/js/dashboard.js"></script>
  <script src="${pageContext.request.contextPath}/resources/maincss/js/Chart.roundedBarCharts.js"></script>
  <!-- End custom js for this page-->
        <!-- 서머노트를 위해 추가해야할 부분 -->
  <script src="${pageContext.request.contextPath}/resources/groupware/summernote/summernote-lite.js"></script>
  <script src="${pageContext.request.contextPath}/resources/groupware/summernote/summernote-ko-KR.js"></script>
  <!-- 여기서부터 스크립트 -->
 <script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery-3.6.3.js"></script>
  <script>
	function deleteBoard(url) {
	  if (confirm("게시글을 삭제하시겠습니까?")) {
	    location.href = url;
	  }
	}
  </script>
  
  <script>
	function updateBoard(url) {
	  if (confirm("글 내용을 수정하시겠습니까?")) {
	    location.href = url;
	  }
	}
  </script>

</body>
</html>