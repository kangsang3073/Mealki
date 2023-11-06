# 밀키트 MES 사이트
### 호스팅 사이트 : http://itwillbs18.cafe24.com/Final_Project/
#### 1. 개발도구 : Eclipse, Github  
#### 2. 개발언어 : Java(OpenJDK 11.0.2), MySQL(8.0.17), JavaScript
#### 3. 라이브러리 : jQuery(3.6.4), JSTL(1.2)
#### 4. 프레임워크 : Spring(4.3.8.RELEASE), MyBatis(3.4.1)
#### 5. 웹 애플리케이션도구 : JSP(MVC model2)
#### 6. 웹 호스팅 : cafe24

***

#### 개발 기간 : 3월 8일 ~ 4월 14일
#### 역할 : SQL, 서버 관리
#### 개발 페이지 : 생산관리현황 페이지, 품질관리 페이지

### <상세 코드>
#### 생산관리현황 페이지  
1. Model 
    - 생산관리현황 DAO [ProductionDAO.java](https://github.com/kangsang3073/Mealki/blob/main/src/main/java/com/itwillbs/dao/ProductionDAO.java)

2. View    
    - 생산관리현황 리스트 [production/listForm.jsp](https://github.com/kangsang3073/Mealki/blob/main/src/main/webapp/WEB-INF/views/mps/production/listForm.jsp) 

3. Controller  
    - 컨트롤러 [ProductionController.java](https://github.com/kangsang3073/Mealki/blob/main/src/main/java/com/itwillbs/controller/ProductionController.java) 

#### 품질관리 페이지 
1. Model 
    - 발주 DAO [QualityDAO.java](https://github.com/kangsang3073/Mealki/blob/main/src/main/java/com/itwillbs/dao/QualityDAO.java) 
    
2. View  
    - 발주 리스트 [quality/listForm.jsp](https://github.com/kangsang3073/Mealki/blob/main/src/main/webapp/WEB-INF/views/mps/quality/listForm.jsp)   

3. Controller  
    - 컨트롤러 [QualityController.java](https://github.com/kangsang3073/Mealki/blob/main/src/main/java/com/itwillbs/controller/QualityController.java)


