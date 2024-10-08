<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../member/adminIndex.jsp"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교수 업로드</title>
<script src="${pageContext.request.contextPath }/resources/js/excelPage.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/excelPage.css">
</head>
<body>
<div class="bcl">
<div class = divall>
<input type="hidden" id="msg" value="${msg}" />  
<div id="contAreaBox">
    <form name="inputForm" method="post" onsubmit="return _onSubmit();" action="${pageContext.request.contextPath}/upload/excelPro" enctype="multipart/form-data" class="form-horizontal">
        <div class="panel">
            <div class="panel-body">
            <h4 class="mt0"><i class="fa fa-cube" aria-hidden="true"></i>교수 아이디 생성</h4>
            <br>
                <div class="table-responsive">
                <p style="color:red"> ※ 반드시 형식에 맞춰서 작성해주세요. / 교수 아이디 생성과 학생 아이디 생성을 꼭 구분해주세요.</p>
                <p>1. 양식파일 다운로드 후 형식에 맞춰 파일 내 모든 항목을 채워서 업로드하셔야 정상 등록됩니다.</p>
                <p>2. 학번(아이디), 비밀번호, 우편번호, 전화번호의 서식은 텍스트 형식으로 지정해주세요.</p>
                <p>3. 엑셀 파일의 빈 행은 모두 지우고 업로드해주세요.</p>
                <br>
                <table id="datatable-scroller" class="table table-bordered tbl_Form">
                        <caption></caption>
                        <colgroup>
                            <col width="250px" />
                            <col />
                        </colgroup>
                        <tbody>
                            <tr>
                                <th class="active" style="text-align:right"><label class="control-label" for="">파일 업로드</label></th>
                                <td>
                                    <input type="file" name="file" id="file" accept=".xlsx, .xls"/>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        
        <div class="pull-right">
            <input type="submit" value="엑셀파일 업로드" class="exbtn" />
			<a href="${pageContext.request.contextPath}/download/excelPro" class="exbtn">양식파일 다운로드</a>
        </div>
    </form>
</div>
 </div>
 </div>
</body>
</html>