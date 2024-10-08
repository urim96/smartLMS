<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/myPageClass.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/myPageClass.css">
<%
    String userName = (String) session.getAttribute("userName");	
%>

<% 
    if(userId == null) {
%>
    <script type="text/javascript">
        alert("로그인이 필요한 페이지입니다.");
        window.location.href = '/';
    </script>
<% 
    } else { 
%>
    <div class="divall">
<div id="mypage_con">
    <div class="mypage_con pd_box inner">
        <div class="mypage_top">

        </div>
        <div class="mypage_bot">
            <!-- 수강과목 -->
<div class="container">
  <p>${userName}님의 수강목록</p>            
  <table class="table">
    <thead>
      <tr>
        <th>강의번호</th>
        <th>강의명</th>
        <th>교수이름</th>
        <th>강의시간</th>
        <th>출결상태</th>
        <th>시험, 과제</th>
      </tr>
    </thead>
    <tbody id="classTableBody">
    <c:forEach items="${classList}" var="item">
    <tr>
    				<td>${item.c_number}</td>
					<td>${item.c_name}</td>
					<td>${item.c_prof_name}</td>
					<td>${item.c_day}&nbsp;${item.c_time} </td>
					<td> <button type="button" class="btn ModalBtn" id="myPageClassDetail" 
					data-toggle="modal" data-target="#myPageModal" value="${item.c_number}" 
					onclick="attInfo(${item.c_number})">상세정보</button></td>
					<td><button class="btn ModalBtn" onClick="location.href='/task/page?c_number=${item.c_number }'">과제</button> </td>
					</tr>
					</c:forEach>
    </tbody>
  </table>
</div>               
<div class="modal fade" id="myPageModal" tabindex="-1" role="dialog"
            aria-labelledby="myModalLabel" data-backdrop='static'
            aria-hidden="true">
            <%@ include file="myPageModal.jsp" %>
</div>

        </div>
        </div>
    </div>
</div>
<%} %>



   
                  
 
					

