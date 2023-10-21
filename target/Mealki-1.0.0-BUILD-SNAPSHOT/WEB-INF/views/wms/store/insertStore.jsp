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
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/maincss/css/vertical-layout-light/style.css">
  <!-- endinject -->
   <link rel="icon" href="${pageContext.request.contextPath}/resources/maincss/images/favicon-32x32.png" /> 
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/maincss/css/blank.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/employee/empManagment.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/wms/insertStore.css">
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery-3.6.3.js"></script>

<script type="text/javascript">  
//탭 관련 
	
	  $(function(){
	  $('.tabcontent > div').hide();
	  $('.tabnav a').click(function () {
	    $('.tabcontent > div').hide().filter(this.hash).fadeIn();
	    $('.tabnav a').removeClass('active');
	    $(this).addClass('active');
	    return false;
	  }).filter(':eq(0)').click();
	  });
	  



</script>

<script type="text/javascript">  

//특정 영역 인쇄

function content_print1(){
   
                var initBody = document.body.innerHTML;
                window.onbeforeprint = function(){
                    document.body.innerHTML =

                                     document.getElementById('store_table_tab01').innerHTML;
                }
                window.onafterprint = function(){
                    document.body.innerHTML = initBody;
                }
                window.print();    
            } 

function content_print2(){
	   
    var initBody = document.body.innerHTML;
    window.onbeforeprint = function(){
        document.body.innerHTML =

                         document.getElementById('store_table_tab02').innerHTML;
    }
    window.onafterprint = function(){
        document.body.innerHTML = initBody;
    }
    window.print();    
} 

function content_print3(){
	   
    var initBody = document.body.innerHTML;
    window.onbeforeprint = function(){
        document.body.innerHTML =

                         document.getElementById('store_table_tab02').innerHTML;
    }
    window.onafterprint = function(){
        document.body.innerHTML = initBody;
    }
    window.print();    
}   


</script>


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
                  <h3 class="font-weight-bold">입고관리</h3>
                </div>
                
          <div class="contentbody"> 
          
<!--  본문 내용 시작 -->
					<div id="search_div" >
		               <div id="table_search" >
		               <div id="search_select_div">
		                     <form name="search" method="get" action="${pageContext.request.contextPath}/wms/store/insertStore">
		                       <span id="storeNum_search"> 입고관리번호 <input type="text" name="sto_num" id="sto_num"></span>
		                       <span id="store_date"> 입고일자 <input type="date" id="startDate" name="startDate">  ~ <input type="date" id="endDate" name="endDate"></span>
		                       <span id="emp_num_search">담당자<input class="input-search" type="text" name="emp_num" id="findEmp_num" value="${sessionScope.emp_num }" onclick="findEmployee()"></span>
		                       <span id="products_search"> 품명 <input type="text" name="item_name" id="item_name" onclick="findProduct()" ></span>
		                       <button class="btn btn-primary" type="submit" id="IconButton6" style="margin-left: 20px; padding-top: 8px; padding-bottom: 8px;"><a>조회</a></button>
		                     </form>
		               </div>
		              
		             </div>
		            </div>

           <div class="tab">
	       	<ul class="tabnav">
	         <li><a href="#tab01">전체</a></li>
	         <li><a href="#tab02">미입고</a></li>
	         <li><a href="#tab03">입고완료</a></li>
	        </ul>
	        
	        <div class="tabcontent" >
	        
		        <div id="tab01" style="width: 100%"> <!-- tab 1내용 -->
				        <div class="store_total_div" style="width: 100%;">
				        <form name="store_form" method="get">
				        	<div id="store_table_tab01"> 
					        <table border="1" class="store_total_table" style="width: 100%;">
								<tr><th>입고관리번호</th><th>발주관리번호</th><th>상세</th><th>품명</th><th>발주수량</th>
								<th>재고수량</th><th>진행현황</th><th>담당자</th><th>선반위치</th><th>선반층</th><th>입고일자</th><th>입고처리</th></tr>
						        <c:forEach var="StoreDTO" items="${PlaceOrderListStore}">
										<tr>
											<td>${StoreDTO.sto_num }</td> <!-- 입고관리번호 -->
											<td>${StoreDTO.order_num } </td><!-- 발주관리번호 -->
											<td><img name="button" class="search-icon" src="${pageContext.request.contextPath}/resources/employee/icon-find.png" width="25" height="25" onClick="storeDetail('${StoreDTO.order_num}', '${StoreDTO.item_name}');"> <!-- 상세페이지 버튼 -->
											<td>${StoreDTO.item_name }</td> <!-- 품명 -->
											<td id="order_qty">${StoreDTO.order_qty }</td> <!-- 발주수량 -->
											<td>${StoreDTO.stk_qnt }</td> <!-- 재고수량 -->
											<td>${StoreDTO.sto_progress }</td> <!-- 진행현황 -->
											<td>${StoreDTO.sto_empNum }</td> <!-- 담당자 -->
											<td style="display: none;">${sessionScope.emp_num }</td>
											<td style="display: none;">${StoreDTO.item_num }</td>
											<td>
												<c:if test="${StoreDTO.sto_progress eq '입고완료'}">
													${StoreDTO.sto_shelf }
							                    </c:if>
							                    
							                    <c:if test="${StoreDTO.sto_progress eq '미입고' && (sessionScope.dept_num eq '400' || sessionScope.dept_num eq '600')}"> 
													<select name="sto_shelf_option" class="search_option">
							                           <option value="A열"> A열 </option>
							                           <option value="B열"> B열 </option>
							                           <option value="C열"> C열 </option>
							                           <option value="D열"> D열 </option>
							                        </select>
							                    </c:if>   
											</td>
											<td>
											
												<c:if test="${StoreDTO.sto_progress eq '입고완료'}">
													${StoreDTO.sto_shelfDetail }
							                    </c:if>
							                    <c:if test="${StoreDTO.sto_progress eq '미입고'&& (sessionScope.dept_num eq '400' || sessionScope.dept_num eq '600')}"> 
													<select name="sto_shelf_option_detail" class="search_option">
							                           <option value="1">1단 </option>
							                           <option value="2">2단 </option>
							                           <option value="3">3단 </option>
							                           <option value="4">4단 </option>
							                        </select>
						                        </c:if>
											</td>
											<td>${StoreDTO.sto_date }</td>
											<td>
												<c:if test="${StoreDTO.sto_progress eq '미입고' && (sessionScope.dept_num eq '400' || sessionScope.dept_num eq '600')}">
												<input type="button" class="store_submit_button" value="입고처리">
												</c:if>
											</td> <!-- 입고처리 -->
										</tr>
						 		</c:forEach>
					        </table>
					        </div>
					      </form>  
						<!-- 페이징 -->
				<div id="pageDiv">		
						<c:if test="${pageDTO.startPage > pageDTO.pageBlock }">
							<a href="${pageContext.request.contextPath}/wms/store/insertStore?pageNum=${pageDTO.startPage - pageDTO.pageBlock }&sto_num=${sto_num}&startDate=${startDate}&endDate=${endDate}&emp_num=${emp_num}&item_name=${item_name}">10페이지 이전</a>
						</c:if>
						
						<c:if test="${pageDTO.currentPage > 0}">
							<c:forEach var="i" begin="${pageDTO.startPage }" end="${pageDTO.endPage }" step="1">
								<a href="${pageContext.request.contextPath}/wms/store/insertStore?pageNum=${i}&sto_num=${sto_num}&startDate=${startDate}&endDate=${endDate}&emp_num=${emp_num}&item_name=${item_name}">${i}</a> 
							</c:forEach>
						</c:if>

						<c:if test="${pageDTO.endPage < pageDTO.pageCount }">
							<a href="${pageContext.request.contextPath}/wms/store/insertStore?pageNum=${pageDTO.startPage + pageDTO.pageBlock }&sto_num=${sto_num}&startDate=${startDate}&endDate=${endDate}&emp_num=${emp_num}&item_name=${item_name}">10페이지 다음</a>
						</c:if>
				</div>
			       		 </div>
		        </div> <!--  탭 내용끝 -->	        
	        
	        
	        
		        <div id="tab02" style="width: 100%"> <!-- tab 2내용 -->
				        <div class="store_total_div1" style="width: 100%;">
				        <form name="store_form" method="get">
				        	<div id="store_table_tab02">				        
					        <table border="1" class="store_total_table" style="width: 100%;">
								<tr><th>입고관리번호</th><th>발주관리번호</th><th>상세</th><th>품명</th><th>발주수량</th>
								<th>재고수량</th><th>진행현황</th><th>담당자</th><th>선반위치</th><th>선반층</th><th>입고일자</th><th>입고처리</th></tr>
						        <c:forEach var="StoreDTO" items="${placeOrderListStore2}">
						        	<c:if test="${StoreDTO.sto_progress eq'미입고'}">
										<tr>
											<td >${StoreDTO.sto_num }</td> <!-- 입고관리번호 -->
											<td >${StoreDTO.order_num } </td><!-- 발주관리번호 -->
											<td><img name="button" class="search-icon" src="${pageContext.request.contextPath}/resources/employee/icon-find.png" width="25" height="25" onClick="storeDetail('${StoreDTO.order_num}', '${StoreDTO.item_name}');"> <!-- 상세페이지 버튼 -->
											<td>${StoreDTO.item_name }</td> <!-- 품명 -->
											<td id="order_qty">${StoreDTO.order_qty }</td> <!-- 발주수량 -->
											<td>${StoreDTO.stk_qnt }</td> <!-- 재고수량 -->
											<td>${StoreDTO.sto_progress }</td> <!-- 진행현황 -->
											<td>${StoreDTO.sto_empNum }</td> <!-- 담당자 -->
											<td style="display: none;">${sessionScope.emp_num }</td>
											<td style="display: none;">${StoreDTO.item_num }</td>
											<td>
												<c:if test="${StoreDTO.sto_progress eq '입고완료'}">
													${StoreDTO.sto_shelf }
							                    </c:if>
							                    <c:if test="${StoreDTO.sto_progress eq '미입고' && (sessionScope.dept_num eq '400' || sessionScope.dept_num eq '600')}"> 
													<select name="sto_shelf_option" class="search_option">
							                           <option value="A열"> A열 </option>
							                           <option value="B열"> B열 </option>
							                           <option value="C열"> C열 </option>
							                           <option value="D열"> D열 </option>
							                        </select>							                    	
							                    </c:if>   
											</td>
											<td>
											
												<c:if test="${StoreDTO.sto_progress eq '입고완료'}">
													${StoreDTO.sto_shelfDetail }
							                    </c:if>
							                    <c:if test="${StoreDTO.sto_progress eq '미입고'&& (sessionScope.dept_num eq '400' || sessionScope.dept_num eq '600')}"> 
													<select name="sto_shelf_option_detail" class="search_option">
							                           <option value="1"> 1단 </option>
							                           <option value="2">2단 </option>
							                           <option value="3">3단 </option>
							                           <option value="4">4단 </option>
							                        </select>
						                        </c:if>
											</td>
											<td>${StoreDTO.sto_date }</td>
											<td>
												<c:if test="${StoreDTO.sto_progress eq '미입고' && (sessionScope.dept_num eq '400' || sessionScope.dept_num eq '600')}">
												<input type="button" class="store_submit_button" value="입고처리">
												</c:if>
											</td> <!-- 입고처리 -->
										</tr>
									</c:if>
						 		</c:forEach>
					        </table>
					        </div>
					      </form>  
			       		 </div>
		        </div> <!--  탭1내용끝 -->
		        
		        <div id="tab03" style="width: 100%"> <!-- tab 3내용 -->
				        <div class="store_total_div1" style="width: 100%;">
				        <form name="store_form" method="get">
				        	<div id="store_table_tab03">					        
					        <table border="1" class="store_total_table" style="width: 100%;">
								<tr><th>입고관리번호</th><th>발주관리번호</th><th>상세</th><th>품명</th><th>발주수량</th>
								<th>재고수량</th><th>진행현황</th><th>담당자</th><th>선반위치</th><th>선반층</th><th>입고일자</th><th>입고처리</th></tr>
						        <c:forEach var="StoreDTO" items="${placeOrderListStore2}">
						        	<c:if test="${StoreDTO.sto_progress eq'입고완료'}">
										<tr>
											<td>${StoreDTO.sto_num }</td> <!-- 입고관리번호 -->
											<td>${StoreDTO.order_num } </td><!-- 발주관리번호 -->
											<td><img name="button" class="search-icon" src="${pageContext.request.contextPath}/resources/employee/icon-find.png" width="25" height="25" onClick="storeDetail('${StoreDTO.order_num}', '${StoreDTO.item_name}');"> <!-- 상세페이지 버튼 -->
											<td>${StoreDTO.item_name }</td> <!-- 품명 -->
											<td id="order_qty">${StoreDTO.order_qty }</td> <!-- 발주수량 -->
											<td>${StoreDTO.stk_qnt }</td> <!-- 재고수량 -->
											<td>${StoreDTO.sto_progress }</td> <!-- 진행현황 -->
											<td>${StoreDTO.sto_empNum }</td> <!-- 담당자 -->
											<td style="display: none;">${sessionScope.emp_num }</td>
											<td style="display: none;">${StoreDTO.item_num }</td>											
											<td>
												<c:if test="${StoreDTO.sto_progress eq '입고완료'}">
													${StoreDTO.sto_shelf }
							                    </c:if>
							                    <c:if test="${StoreDTO.sto_progress eq '미입고'&& (sessionScope.dept_num eq '400' || sessionScope.dept_num eq '600')}"> 
													<select name="sto_shelf_option" class="search_option">
							                           <option value="A열"> A열 </option>
							                           <option value="B열"> B열 </option>
							                           <option value="C열"> C열 </option>
							                           <option value="D열"> D열 </option>
							                        </select>							                    	
							                    </c:if>   
											</td>
											<td>
											
												<c:if test="${StoreDTO.sto_progress eq '입고완료'}">
													${StoreDTO.sto_shelfDetail }
							                    </c:if>
							                    <c:if test="${!StoreDTO.sto_progress eq '입고완료'&& (sessionScope.dept_num eq '400' || sessionScope.dept_num eq '600')}"> 
													<select name="sto_shelf_option_detail" class="search_option">
							                           <option value="1"> 1단 </option>
							                           <option value="2">2단 </option>
							                           <option value="3">3단 </option>
							                           <option value="4">4단 </option>
							                        </select>
						                        </c:if>
											</td>
											<td>${StoreDTO.sto_date }</td>
											<td>
												<c:if test="${StoreDTO.sto_progress eq '미입고' && (sessionScope.dept_num eq '400' || sessionScope.dept_num eq '600')}">
												<input type="button" class="store_submit_button" value="입고처리">
												</c:if>
											</td> <!-- 입고처리 -->
										</tr>
									</c:if>	
						 		</c:forEach>
					        </table>
					        </div>

					      </form>  

			       		 </div>
		        </div> <!--  탭2 내용끝 -->
		        

		        
		        
		       	</div>
	       </div>
            </div>
 <!--  본문내용 끝 -->    
          </div> <!-- 탭내용끝 -->
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


  <script>
  <!--  입고날짜 시작일 기본값 일주일전으로  -->
	var today = new Date();
	var Oneweek = new Date(today.setDate(today.getDate() - 6));
	document.getElementById('startDate').valueAsDate = Oneweek; 


  <!--  입고날짜 종료일 기본값 오늘날짜로  -->
	document.getElementById('endDate').valueAsDate = new Date();

  </script>

<script type="text/javascript">
/* 담당자 찾기 (팝업 방법1)*/
 var openWin;

 function findEmployee()
 {
  window.name = "parentForm";
  openWin = window.open("${pageContext.request.contextPath}/wms/placeorder/findEmp_num",
           "childForm", "width=650, height=600,top=300, left=300, resizable = no, scrollbars = no");    
 }

 /* 상품찾기 */    
 var openWin;

 function findProduct()
 {
  window.name = "parentForm";
  openWin = window.open("${pageContext.request.contextPath}/wms/store/findProduct",
           "childForm", "width=650, height=600,top=300, left=300, resizable = no, scrollbars = no");    
 }
 
 
 /* 상세보기 팝업 */

function storeDetail(order_num, item_name) {
	var _width = '1200';
	var _height = '650';
	var _left = Math.ceil((window.screen.width - _width) / 2);
	var _top = Math.ceil((window.screen.height - _height) / 2);
	let popOption = 'width='+ _width+ ', height='+ _height+ ', left='+ _left+ ', top='+ _top;
	window.open("${pageContext.request.contextPath}/wms/store/storeDetail?order_num="+order_num+ "&item_name=" + item_name,
							"밀키의 냉장고",popOption);}
 
 
 </script>
 
 
<script type="text/javascript">  

//버튼 클릭 시 입력된 값 tr정보 넘기기
	$(function(){
	$(".store_submit_button").click(function(){ 
			
			var str = "";
			var tdArr = new Array();	// 배열 선언
			var store_submit_button = $(this);
			
			var tr = store_submit_button.parent().parent();
			var td = tr.children();
			
			td.each(function(i) {
				  var text = td.eq(i).text().trim(); // i번째 td의 텍스트를 가져와 공백 제거
				  if (text !== "" && text !== null) { // 텍스트가 빈 값이나 null이 아니면 배열에 추가
					  var selectValue = $(this).find('select').val();
					  tdArr.push(selectValue || text);
				  }
				});
			
			var order_num = tdArr[0]; //발주번호 
			var item_name = tdArr[1]; //품명
			var order_qty = tdArr[2]; // 발주수량
			var stk_qnt = tdArr[3]; //창고재고수량
			var sto_progress = tdArr[4]; //진행상태
			var sto_empNum = tdArr[5]; //담당자번호
			var item_num = tdArr[6]; //아이템번호
			var sto_shelf = tdArr[7]; //선반위치
			var sto_shelfDetail =tdArr[8]; 
			
			console.log("배열에 담긴 값 : "+tdArr);
			//배열에 담긴 값 : OR20230322135957,순두부,50,0,미입고,323031601,A,1
			
			$.ajax({
 				url:'addStore',
 				type :'GET',
 				data:{order_num:order_num,item_name:item_name,order_qty:order_qty,
 					stk_qnt:stk_qnt,sto_progress:sto_progress,sto_empNum:sto_empNum,
 					sto_shelf:sto_shelf,sto_shelfDetail:sto_shelfDetail,item_num:item_num},
 				success:function(result){
 				
 				alert(item_name +" "+ order_qty+"개가 입고처리 되었습니다.");
 				location.reload();
 				},
 			});
	});	
	});	
</script>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery-3.6.3.js"></script>

</body>
</html>