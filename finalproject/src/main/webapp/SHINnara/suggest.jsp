<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
<style>
    .btn-primary{background-color: #F64747 !important; border-color: #F64747 !important;}
    .card-header{
/*     background-color: #E6E6E6 !important;  */
    font-weight: 550 !important;
    font-family:"Nanum Gothic", sans-serif !important;
    color: #F64747 !important; 
    }
    .menu a{cursor:pointer;}
    .menu .hide{display:none;}
    ul{list-style-type: none !important;}
    #cityList a, #catList a{color: #6c757d; font-family:"Nanum Gothic", sans-serif !important; font-weight: 400 !important;}
    #cityList a:hover, #catList a:hover {color:#F64747; font-family:"Nanum Gothic", sans-serif !important; font-style: none !important;}

    .card-img-top{
    border-radius: 4px;
    border-top-left-radius: 4px;
    border-top-right-radius: 4px;
    border-bottom-right-radius: 4px;
    border-bottom-left-radius: 4px;
    }
    
   img:hover{opacity:100 !important;}

#header {
		background-color: transparent;
		color: #fdd1d1;
		cursor: default;
		height: 3.25em;
		left: 0;
		line-height: 3.25em;
		position: fixed;
		text-align: right;
		top: 1em;
		width: 100%;
		z-index: 10001;
		padding: 0 1.5em;
	}

		#header.alt {
			top: 0;
			background: #F64747;
		}

		#header .logo {
			display: inline-block;
			height: inherit;
			left: 1.5em;
			line-height: inherit;
			margin: 0;
			padding: 0;
			position: absolute;
			top: 0;
		}

		#header .logo a {
			font-size: 1.25em;
			color: #555;
			font-weight: 600;
			text-decoration: none;
		}

			#header .logo a:hover {
				color: #555;
			}

		#header .logo span {
			font-weight: 300;
			font-size: .8em;
			color: #555;
		}

	#header > a {
		-moz-transition: color 0.2s ease-in-out;
		-webkit-transition: color 0.2s ease-in-out;
		-ms-transition: color 0.2s ease-in-out;
		transition: color 0.2s ease-in-out;
		display: inline-block;
		color: inherit;
		text-decoration: none;
	}

	#header > a[href="#menu"] {
		text-decoration: none;
		-webkit-tap-highlight-color: transparent;
		background: rgba(255, 255, 255, 0.15);
		border-radius: 100%;
		height: 2.5em;
		width: 2.5em;
		line-height: 2.5em;
		color: #555;
		text-align: center;
	}

		#header > a[href="#menu"]:before {
			content: "";
			-moz-osx-font-smoothing: grayscale;
			-webkit-font-smoothing: antialiased;
			font-family: FontAwesome;
			font-style: normal;
			font-weight: normal;
			text-transform: none !important;
		}

		#header > a[href="#menu"]:hover {
			color: rgba(255, 255, 255, 0.25);
			background: none;
			box-shadow: 0 0 0 1px rgba(255, 255, 255, 0.25);
		}

		#header > a[href="#menu"]:before {
			margin: 0;
		}

		#header > a[href="#menu"] span {
			display: none;
		}

	@media screen and (max-width: 736px) {

		#header > a {
			padding: 0 0.5em;
		}

	} /* end header */
/* Menu */

	#menu {
		-moz-transform: translateX(20em);
		-webkit-transform: translateX(20em);
		-ms-transform: translateX(20em);
		transform: translateX(20em);
		-moz-transition: -moz-transform 0.5s ease, box-shadow 0.5s ease, visibility 0.5s;
		-webkit-transition: -webkit-transform 0.5s ease, box-shadow 0.5s ease, visibility 0.5s;
		-ms-transition: -ms-transform 0.5s ease, box-shadow 0.5s ease, visibility 0.5s;
		transition: transform 0.5s ease, box-shadow 0.5s ease, visibility 0.5s;
		-webkit-overflow-scrolling: touch;
		background: rgba(0,0,0,0.5);
		box-shadow: none;
		color: #ffffff;
		height: 100%;
		max-width: 80%;
		overflow-y: auto;
		padding: 3em 2em;
		position: fixed;
		right: 0;
		top: 0;
		visibility: hidden;
		width: 20em;
		z-index: 10002;
	}

		#menu > ul {
			margin: 0 0 1em 0;
		}

		#menu > ul.links {
			list-style: none;
			padding: 0;
		}

		#menu > ul.links > li {
			padding: 0;
		}

		#menu > ul.links > li > a:not(.button) {
			border: 0;
			border-top: solid 1px rgba(255, 255, 255, 0.25);
			color: inherit;
			display: block;
			line-height: 3.5em;
			text-decoration: none;
		}
	
		#menu > ul.links > li > .button {
			display: block;
			margin: 0.5em 0 0 0;
		}
	
		#menu > ul.links > li:first-child > a:not(.button) {
			border-top: 0 !important;
		}

		#menu .close {
			text-decoration: none;
			-moz-transition: color 0.2s ease-in-out;
			-webkit-transition: color 0.2s ease-in-out;
			-ms-transition: color 0.2s ease-in-out;
			transition: color 0.2s ease-in-out;
			-webkit-tap-highlight-color: transparent;
			border: 0;
			color: #fbb5b5;
			cursor: pointer;
			display: block;
			height: 3.25em;
			line-height: 3.25em;
			padding-right: 1.25em;
			position: absolute;
			right: 0;
			text-align: right;
			top: 0;
			vertical-align: middle;
			width: 7em;
		}

		#menu .close:before {
			content: "";
			-moz-osx-font-smoothing: grayscale;
			-webkit-font-smoothing: antialiased;
			font-family: FontAwesome;
			font-style: normal;
			font-weight: normal;
			text-transform: none !important;
		}

		#menu .close:before {
			font-size: 1.25em;
		}

		#menu .close:hover {
			color: #ffffff;
		}

		@media screen and (max-width: 736px) {

			#menu .close {
				height: 4em;
				line-height: 4em;
			}

		}

		#menu.visible {
			-moz-transform: translateX(0);
			-webkit-transform: translateX(0);
			-ms-transform: translateX(0);
			transform: translateX(0);
			box-shadow: 0 0 1.5em 0 rgba(0, 0, 0, 0.2);
			visibility: visible;
		}

		@media screen and (max-width: 736px) {

			#menu {
				padding: 2.5em 1.75em;
			}

		}	/* end menu */	


   
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
    $(document).ready(function(){
        $(".menu>a").click(function(){
            var submenu = $(this).next("ul");
            if( submenu.is(":visible") ){
                submenu.slideUp();
            }else{
                submenu.slideDown();
            }
        })//end menu
        
        $(".forCity").click(function(){
        	var city_code = $(this).attr('id');
        	
        	$.ajax({
     		    type : "GET",
    			url : "CityList.do?city_code="+city_code,
    		    success: location.href="CityList.do?city_code="+city_code
    			
        	});
        	
        })//end forCity
        
        $("#searchBtn").click(function(){
        	var searchWord = $("#searchWord").val();
        	$.ajax({
        		type: 'GET',
        		url: "sugSearchList.do?searchWord="+searchWord,
        		success: location.href ="sugSearchList.do?searchWord="+searchWord
        	});
        	
        });//end search
    		
   		if('${pv.startPage}'>1){
   			$('#preBtn').removeClass();
   			$('#preBtn').addClass('page-item');
   		}else{
   			$('#preBtn').removeClass();
   			$('#preBtn').addClass('page-item disabled');
   		};
   		if('${pv.endPage}'<'${pv.totalPage}'){
   			$('#nextBtn').removeClass();
   			$('#nextBtn').addClass('page-item');
   			
   		}else{
   			$('#nextBtn').removeClass();
   			$('#nextBtn').addClass('page-item disabled');
   		};
     
    });
    
</script>

  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Blog Home - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="SHINnara/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="SHINnara/css/blog-home.css" rel="stylesheet">

</head>

<body>

	<header id="header">
		<div class="logo"><a href="index.html">Road Trip <span>by TEMPLATED</span></a></div>
		<a href="#menu"><span>Menu</span></a>
	</header>
<!-- Nav -->
	<nav id="menu">
		<ul class="links">
			<li><a href="index.html">Home</a></li>
			<li><a href="generic.html">Generic</a></li>
			<li><a href="elements.html">Elements</a></li>
		</ul>
	</nav>

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <!-- Blog Entries Column -->
      <div class="col-md-8">

        <h1 class="my-4" style="color: #555;">Suggestions for you
          <small>Food&Place</small>
        </h1>
       <%--  <c:if test="${sessionScope.user_id eq 'admin'}"> --%>
        <form id="frm" name="frm" method="get" action="suggestWriteForm.do">
		   <input class="btn btn-secondary" type="submit" id="btnWrite" value="관리자 글쓰기" style="margin-left: 104%;" />
        </form>
        <%-- </c:if> --%>
        <!-- Blog Post -->
        <div class="card mb-4">

        <c:forEach var="boardDTO" items="${bList}">
        		<c:url var="path" value="suggestView.do">
					<c:param name="currentPage" value="${pv.currentPage}" />
					<c:param name="b_num" value="${boardDTO.b_num}" />
				</c:url>
        <c:forEach items="${boardDTO.file}" var="files"> 
                  <c:if test="${not empty files}">
                 <img class="card-img-top" src="SHINnara/images/${files}" style="max-height: 280px; opacity:0.9; width: 95%; margin-left: 2%; margin-top: 2% " alt="Card image cap" > 
                 </c:if>
		</c:forEach> 
          
          <div class="card-body">
            <h4 class="card-title">${boardDTO.title}</h4>
            <a href="${path}" class="btn btn-primary">Read More &rarr;</a>
          </div>
          <div class="card-footer text-muted">          
            <p><img src="SHINnara/images/1378418749 (1).png" style="width:15px; height: 15px;">좋아요 ${boardDTO.b_like}  &rarr; 조회수${boardDTO.viewcount}</p> 
          </div>           
        </c:forEach>
        </div>


     <ul class="pagination justify-content-center mb-4">

		<li id="preBtn">
			<c:if test="${pv.city_code != null && pv.searchWord == null }">
			<a class="page-link" href="CityList.do?currentPage=${pv.currentPage-1 }&city_code=${pv.city_code}">&larr;Newer</a>
			</c:if>
			<c:if test="${pv.city_code== null && pv.searchWord == null }">
			<a class="page-link" href="List.do?currentPage=${pv.currentPage-1 }">&larr;Newer</a>
			</c:if>
			<c:if test="${pv.searchWord != null }">
			<a class="page-link" href="sugSearchList.do?currentPage=${pv.currentPage-1 }&searchWord=${pv.searchWord}">&larr;Newer</a>
			</c:if>
		</li>

		<li id="nextBtn">
			<c:if test="${pv.city_code != null && pv.searchWord == null  }">
			<a class="page-link" href="CityList.do?currentPage=${pv.currentPage+1 }&city_code=${pv.city_code}">Older&rarr;</a>
			</c:if>
			<c:if test="${pv.city_code == null && pv.searchWord == null }">
			<a class="page-link" href="List.do?currentPage=${pv.currentPage+1 }">Older&rarr;</a>
			</c:if>
			<c:if test="${pv.searchWord != null }">
			<a class="page-link" href="sugSearchList.do?currentPage=${pv.currentPage+1 }&searchWord=${pv.searchWord}">Older&rarr;</a>
			</c:if>
		</li>

     </ul>
     <!-- end pagination -->
     <!-- Pagination 끝-->
    
    
      <!-- end content 건드리지 x -->
      </div>

      <!-- Sidebar Widgets Column -->
      <div class="col-md-4" style="margin-top: 10% !important">

        <!-- Search Widget -->
        <div class="card my-4">
          <h5 class="card-header">검색하기</h5>
          <div class="card-body">
            <div class="input-group">
              <input type="text" class="form-control" id="searchWord" placeholder="제목 또는 내용 ">
              <span class="input-group-btn">
                <button class="btn btn-secondary" type="button" id="searchBtn">검색</button>
              </span>
            </div>
          </div>
        </div>

        <!-- Categories Widget -->
        <div class="card my-4">
          <h5 class="card-header">둘러보기</h5>
          <div class="card-body">
            <div class="row" id="cityList">
              <ul>
              <li>
                 <a href="List.do" >전체보기</a>
              </li>

              <li class ="menu">
                 <a href="#">한국</a>
                 <ul class="hide">
                   <li><a href="#"  id="SEO" class="forCity">서울</a></li>
                   <li><a href="#"  id="PUS" class="forCity">부산</a></li>
                   <li><a href="#"  id="CJU" class="forCity">제주</a></li>
                 </ul>
              </li>
              
              <li class ="menu">
                 <a href="#">중국</a>
                 <ul class="hide">
                   <li><a href="#" id="PEK" class="forCity">베이징</a></li>
                   <li><a href="#" id="TAO" class="forCity">칭다오</a></li>
                   <li><a href="#" id="SHA" class="forCity">상하이</a></li>
                 </ul>
              </li>
              
              <li class ="menu">
                 <a href="#">일본</a>
                 <ul class="hide">
                   <li><a href="#" id="TYO" class="forCity">도쿄</a></li>
                   <li><a href="#" id="OSA" class="forCity">오사카</a></li>
                   <li><a href="#" id="OKA" class="forCity">오키나와</a></li>
                 </ul>
              </li>        
              
             <li class ="menu">
                 <a href="#">베트남</a>
                 <ul class="hide">
                   <li><a href="#" id="DAD" class="forCity">다낭</a></li>
                 </ul>
              </li>      

             <li class ="menu">
                 <a href="#">태국</a>
                 <ul class="hide">
                   <li><a href="#" id="BKK" class="forCity">방콕</a></li>
                 </ul>
              </li>            
               
           </ul>  
            </div>
          </div>
        </div>

        <!-- Side Widget -->
<!--         <div class="card my-4">
          <h5 class="card-header">Category</h5>
          <div class="card-body">
              <div class="col-lg-6">
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="#">맛집</a>
                  </li>
                </ul>
              </div>
              <div class="col-lg-6">
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="#">명소</a>
                  </li>
                </ul>
              </div>
          </div>
        </div> -->

      </div>

    <!-- /.row -->

  </div>
  </div>
  <!-- /.container -->

  <!-- Bootstrap core JavaScript -->
  <script src="SHINnara/vendor/jquery/jquery.min.js"></script>
  <script src="SHINnara/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="SHINnara/js/jquery.scrolly.min.js"></script>
  <script src="SHINnara/js/jquery.scrollex.min.js"></script>  
  <script src="SHINnara/js/skel.min.js"></script>
  <script src="SHINnara/js/util.js"></script>
  <script src="SHINnara/js/main.js"></script>
  <script src="SHINnara/js/jquery.min.js"></script>
</body>

</html>