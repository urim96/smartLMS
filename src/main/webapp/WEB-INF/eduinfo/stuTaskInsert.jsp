<%@ page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>

<html>
<head>

<title>학생 과제 등록</title>

</head>
<body>

	<%@ include file="../member/taskIndex.jsp"%>

	
	
<div class="bcl">
        <div class="divall">
                <section class="header-container">
    					<br><br>
                </section>
                <section class="contents-container">
                  <form action="/student/task" method="POST" enctype="multipart/form-data">
                  <div class="insertForm">
                  	<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">강의 번호</span>
						</div>
						<input type="text" class="form-control" name="c_number" id="c_number"
							value="${c_number}" placeholder="" readOnly>
					</div>
					<input type="text" class="form-control" name="t_number" value="${t_number }" style="display:none;">
                  	<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">작성자</span>
						</div>
						<input type="text" class="form-control" name="id" id="id"
							value="<%= id %>" placeholder="" readOnly>
					</div>
                  	<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">과제 제목</span>
						</div>
						<input type="text" class="form-control" name="st_title" id="title"
							value="" placeholder="">
					</div>
                  	<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">과제 내용</span>
						</div>
						<input type="text" class="form-control" name="st_info" id="info"
							value="">
					</div>
                       
                  	<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">파일</span>
						</div>
						<input type=file class="form-control" name="uploadFile" id=""
							value="">
							
					</div>
                        <button type="submit" class="subtn">등록하기</button>
                        </form>
                </section>
        </div>
</div>
</body>
</html>
