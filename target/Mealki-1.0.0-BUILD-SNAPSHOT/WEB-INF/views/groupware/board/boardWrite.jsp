<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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

			<c:if test="${empty sessionScope.emp_num }">
				<c:redirect url="/main/login"></c:redirect>
			</c:if>

			<article id="table_content">
					<form action="${pageContext.request.contextPath}/groupware/board/boardWritePro" method="post" enctype="multipart/form-data">
					<table id="content" border="1">
					<tr><th>제목</th>
					       <td><input type="text" name="bo_title" style="width:100%;"></td></tr>
					<tr><th>작성자</th>
					       <td><input type="text" name="bo_name" value="${sessionScope.dept_num == 100 ? 'R&D' : sessionScope.dept_num == 200 ? '영업부' : sessionScope.dept_num == 300 ? '생산부' : 
					       				   								 sessionScope.dept_num == 400 ? '자재부' : sessionScope.dept_num == 500 ? '인사부' : sessionScope.dept_num == 600 ? '전산부' : ''} ${sessionScope.emp_Kname}" readonly style="width:100%;">
					       	   <input type="hidden" name="bo_emp_num" value="${sessionScope.emp_num}" readonly> </td></tr>
					       
					<tr><th>내용</th>
						<td><textarea id="summernote" name="bo_content" style="text-align:left;"></textarea></td></tr>
					
					<tr><th>첨부파일</th>
       						<td style="text-align:left;"><input type="file" name="file" ></td></tr>              
					</table>
					<div id="table_button">
					<input type="checkbox" name="top_fixed" value="1" style="float:left;">상단에 고정하기&nbsp;&nbsp;
					<input type="submit" value="글쓰기" class="btn btn-primary" onclick="return checkForm();">
					</div>
					</form>
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
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery-3.6.3.js"></script>
      <!-- 서머노트를 위해 추가해야할 부분 -->
  <script src="${pageContext.request.contextPath}/resources/groupware/summernote/summernote-lite.js"></script>
  <script src="${pageContext.request.contextPath}/resources/groupware/summernote/summernote-ko-KR.js"></script>
  
  <script>
	  function checkForm() {
	    if (document.getElementsByName("bo_title")[0].value == "") {
	      alert("제목을 입력하세요.");
	      return false;
	    }
	    if (document.getElementsByName("bo_content")[0].value == "") {
	      alert("내용을 입력하세요.");
	      return false;
	    }
	    return true;
	  }
  </script>

  <!--  -->
	<script>
		$(document).ready(function() {
			var toolbar = [
			    // 글꼴 설정
			    ['fontname', ['fontname']],
			    // 글자 크기 설정
			    ['fontsize', ['fontsize']],
			    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
			    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
			    // 글자색
			    ['color', ['forecolor','color']],
			    // 표만들기
// 			    ['table', ['table']],
			    // 글머리 기호, 번호매기기, 문단정렬
			    ['para', ['ul', 'ol', 'paragraph']],
			    // 줄간격
			    ['height', ['height']],
// 			    // 그림첨부, 링크만들기, 동영상첨부
// 			    ['insert',['picture','link','video']],
			    // 코드보기, 확대해서보기, 도움말
			    ['view', ['codeview','fullscreen', 'help']]
			  ];

		var setting = {
	            height : 500,
	            minHeight : null,
	            maxHeight : null,
	            focus : true,
	            lang : 'ko-KR',
	            toolbar : toolbar,
	            fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림', '돋움체', '바탕체'],
	            fontSizes: ['8','9','10','11','12','13','14','15','16','17','18','19','20','24','30','36','48','64','82','150'],
	            callbacks : { 
	            	onImageUpload : function(files, editor,
	                        welEditable) {
	                        for (var i = files.length - 1; i >= 0; i--) {
	                        uploadSummernoteImageFile(files[i],
	                        this);
	                        		}
	                        	}
	                        }
	                     };

	        $('#summernote').summernote(setting);
		});
	</script>
</body>
</html>