<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>고객센터-공지사항</title>

<!-- Bootstrap core CSS -->
<link href="Son_cus/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="Son_cus/css/blog-post.css" rel="stylesheet">

<!-- Latest compiled and minified CSS -->
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous"> -->

<!-- Optional theme -->
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous"> -->

<!-- Latest compiled and minified JavaScript -->
<!-- <script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
 -->
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#returnBtn').bind('click', function() {
			$('#frm').attr('action', 'helpMain.do');
			$('#frm').submit();
			// $('#frm').attr('action','list.sb').submit();
		});

		$('#resetBtn').on('click', function() {
			$('#title').val('');
			$('#b_content').val('');
			$('#upload').val('');
		});
		$('#writeBtn').on('click', function() {
			$('#frm').attr('action', 'blogUpPro.do').submit();
			this.preventDefault();

		});
		

	});
</script>

<style type="text/css">
</style>
</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">Start Bootstrap</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Services</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Contact</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">

		<div class="row">
			<div class="col-lg-8">
				<div class="container">
					<form id="frm" method="post" encType="multipart/form-data">
						<table class="table table-bordered">
							<tr>
								<th>제목:</th>
								<td><input id="title" type="text" placeholder="제목을 입력하세요. " value="${bdto.title }"
									name="title" class="form-control" /></td>
							</tr>
							<tr>
								<th>내용:</th>
								<td><textarea id="b_content" cols="10"
										placeholder="내용을 입력하세요. " name="b_content" 
										class="form-control" style="height: 300px;">${bdto.b_content }</textarea></td>
							</tr>
							<tr>
								<th>첨부파일:</th>
								<td><input id="upload" type="file"
									placeholder="파일을 선택하세요. " name="upload" class="form-control" />
									<c:if test="${bdto.filename }!=null">기존파일:${bdto.filename }</c:if></td>
							</tr>
							<tr>
								<td colspan="2"><input type="button" value="수정"
									class="pull-right" id="writeBtn" /> <input type="button"
									value="reset" class="pull-left" id="resetBtn" /> <input
									type="button" value="글 목록으로... " class="pull-right"
									id="returnBtn" /> <!-- <a class="btn btn-default" onclick="sendData()"> 등록 </a>
                    <a class="btn btn-default" type="reset"> reset </a>
                    <a class="btn btn-default" onclick="javascript:location.href='list.jsp'">글 목록으로...</a> -->
								</td>
							</tr>
						</table>
						<input type="hidden" name="user_id" value="test01" />
						<input type="hidden" name="b_num" value="${bdto.b_num }" />
					</form>
				</div>
			</div>


			<!-- Sidebar Widgets Column -->
			<!-- <div class="col-md-4">

				Search Widget
				<div class="card my-4">
					<h5 class="card-header">Search</h5>
					<div class="card-body">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Search for..."> <span
								class="input-group-btn">
								<button class="btn btn-secondary" type="button">Go!</button>
							</span>
						</div>
					</div>
				</div>

				Categories Widget
				<div class="card my-4">
					<h5 class="card-header">Categories</h5>
					<div class="card-body">
						<div class="row">
							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><a href="#">Web Design</a></li>
									<li><a href="#">HTML</a></li>
									<li><a href="#">Freebies</a></li>
								</ul>
							</div>
							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><a href="#">JavaScript</a></li>
									<li><a href="#">CSS</a></li>
									<li><a href="#">Tutorials</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div> -->

			<!-- Side Widget -->
			<div class="card my-4">
					<jsp:include page="helpchatOpen.jsp"></jsp:include>
			</div>

		</div>


	</div>
	<!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2019</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="Son_cus/vendor/jquery/jquery.min.js"></script>
	<script src="Son_cus/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
