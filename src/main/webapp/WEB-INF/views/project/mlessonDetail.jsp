<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>관리자</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="${contextPath}/resources/plugins/fontawesome-free/css/all.min.css">
   <!-- overlayScrollbars -->
  <link rel="stylesheet" href="${contextPath}/resources/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${contextPath}/resources/dist/css/adminlte.min.css">
  <style>
  .mBtn {
  margin-right:10px;
  }
  </style>
</head>
<body class="hold-transition dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
<div class="wrapper">

<%@ include file="../include/mFooter.jsp" %>
  <%@ include file="../include/mNavbar.jsp" %>
  <%@ include file="../include/mSide.jsp" %>

 

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">강의 관리</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/home">Home</a></li>
              <li class="breadcrumb-item active">강의 상세</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
    <div class="contaner-fluid">
    <div class="row">
    <div class="col-12">
    <div class="card card-primary card-outline">
    <div class="card-header">
    <h3 class="card-title">상세보기</h3>
</div>
     	<div class="card-body">
     	<div class="form-group">
     	<label>강의 명</label>
     	 <input type="text" name="lectureName"class="form-control" value="${mlessonDetail.lectureName}" readonly="readonly"/>
     	<label>강의 기간</label>
     	 <input type="text" name="day"class="form-control" value="${mlessonDetail.lectureDateStart} ~ ${mlessonDetail.lectureDateEnd}" readonly="readonly"/>
     	<label>강의 번호</label>
     	<input type="text" name="lectureNum" class="form-control" value="${mlessonDetail.lectureNum}" readonly="readonly"/>
     	<label>담당 강사</label>
     	<input type="text" name="userName" class="form-control" value="${mlessonDetail.userName}" readonly="readonly"/>
     	<label>강의 내용</label>
     	<textarea name="content" rows="5" readonly="readonly" class="form-control">${mlessonDetail.lectureContent}</textarea>
    </div>
    <!-- /.content -->
  <div class="d-flex justify-content-center">
  <div class="box-footer">
  	<button class="btn btn-success mBtn" onclick = "location.href = '/home'">메인</button>
  	<c:if test="${mlessonDetail.lecDel == 0}">
    <button class="btn btn-warning mBtn" type = "button" onclick = "location.href = '/lessonUpdate?lectureNum=${mlessonDetail.lectureNum}'">수정</button>
    </c:if>
    <c:if test="${mlessonDetail.lecDel == 0}">
  	<button class="btn btn-danger mBtn" onclick = "delOk()">삭제</button>
  	</c:if>
  	<c:if test="${mlessonDetail.lecDel == 1}">
  	<button class="btn btn-danger mBtn" onclick = "location.href = '/recycleDelete?lectureNum=${mlessonDetail.lectureNum}'">삭제</button>
  	</c:if>
  	<c:if test="${mlessonDetail.lecDel == 1}">
    <button class="btn btn-warning mBtn" type = "button" onclick = "location.href = '/lessonRestore?lectureNum=${mlessonDetail.lectureNum}'">복구</button>
    </c:if>
  	<button class="btn btn-primary mBtn" onclick = "location.href = '/lesson'">목록</button>
  	</div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
  <!-- /.content-wrapper -->

<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<!-- jQuery -->
<script>
function delOk(){
    if(!confirm('삭제하시면 복구할 수 없습니다. \n정말로 삭제하시겠습니까?')){
        return false;
    }
    location.href = '/delete?lectureNum=${mlessonDetail.lectureNum}';
}
</script>


  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
    <div class="p-3">
      <h5>Title</h5>
      <p>Sidebar content</p>
    </div>
  </aside>
  <!-- /.control-sidebar -->


</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="${contextPath}/resources/plugins/jquery/jquery.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- Bootstrap -->
<script src="${contextPath}/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- overlayScrollbars -->
<script src="${contextPath}/resources/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="${contextPath}/resources/dist/js/adminlte.js"></script>

<!-- PAGE PLUGINS -->
<!-- jQuery Mapael -->
<script src="${contextPath}/resources/plugins/jquery-mousewheel/jquery.mousewheel.js"></script>
<script src="${contextPath}/resources/plugins/raphael/raphael.min.js"></script>
<script src="${contextPath}/resources/plugins/jquery-mapael/jquery.mapael.min.js"></script>
<script src="${contextPath}/resources/plugins/jquery-mapael/maps/usa_states.min.js"></script>
<!-- ChartJS -->
<script src="${contextPath}/resources/plugins/chart.js/Chart.min.js"></script>


<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="${contextPath}/resources/dist/js/pages/dashboard2.js"></script>
</body>
</html>