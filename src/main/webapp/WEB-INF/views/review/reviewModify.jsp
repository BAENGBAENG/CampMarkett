<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
     <title>Home</title>
     <meta charset="utf-8">
	 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
     <link rel="icon" href="resources/assets/img/images/favicon.ico">
     <link rel="shortcut icon" href="resources/assets/img/images/favicon.ico" />
     <link rel="stylesheet" href="resources/assets/css/style.css">
     <link rel="stylesheet" href="resources/assets/css/slider.css">
	 <link rel="stylesheet" href="resources/assets/css/zerogrid.css" type="text/css" media="screen">
	 <link rel="stylesheet" href="resources/assets/css/responsive.css" type="text/css" media="screen">
	 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/simplex/bootstrap.min.css" integrity="sha384-FYrl2Nk72fpV6+l3Bymt1zZhnQFK75ipDqPXK0sOR0f/zeOSZ45/tKlsKucQyjSp" crossorigin="anonymous"> 
     <script src="resources/assets/js/jquery.js"></script>
     <script src="resources/assets/js/jquery-migrate-1.1.1.js"></script>
     <script src="resources/assets/js/superfish.js"></script>
     <script src="resources/assets/js/jquery.easing.1.3.js"></script>
     <script src="resources/assets/js/sForm.js"></script>
     <script src="resources/assets/js/jquery.carouFredSel-6.1.0-packed.js"></script>
     <script src="resources/assets/js/tms-0.4.1.js"></script>
	 <script src="resources/assets/js/css3-mediaqueries.js"></script>
     <script>
	
		function update(f){
		
		f.action = "reviewUpdate.do";
		f.method = "POST";
		f.submit();
		
		}

	</script>
     <script>
      $(window).load(function(){
      $('.slider')._TMS({
              show:0,
              pauseOnHover:false,
              prevBu:'.prev',
              nextBu:'.next',
              playBu:false,
              duration:800,
              preset:'fade', 
              pagination:true,//'.pagination',true,'<ul></ul>'
              pagNums:false,
              slideshow:8000,
              numStatus:false,
              banners:false,
          waitBannerAnimation:false,
        progressBar:false
      })  
      });
      
     $(window).load (
    function(){$('.carousel1').carouFredSel({auto: false,prev: '.prev',next: '.next', width: 960, items: {
      visible : {min: 1,
       max: 4
},
height: 'auto',
 width: 240,

    }, responsive: false, 
    
    scroll: 1, 
    
    mousewheel: false,
    
    swipe: {onMouse: false, onTouch: false}});
    
    
    });      

     </script>
     <!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/resources/assets/img/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
         </a>
      </div>
    <![endif]-->
    <!--[if lt IE 9]>
      <script src="resources/assets/js/html5shiv.js"></script>
      <link rel="stylesheet" media="screen" href="resources/assets/css/ie.css">

    <![endif]-->
     </head>
     <body style="background-color: #5fa022;">
       <div class="main">
<!--==============================header=================================-->
 <header> 
  <div class="zerogrid">
    <div class="col-full">
	<div class="wrap-col">
    <h1><a href="home"><img src="resources/assets/img/images/logo2.png" alt="EXTERIOR"></a> </h1>
    
         <div class="menu_block">
           <nav>
            <ul class="sf-menu">
                   <li><a href="home">Home</a></li>
                   
                   <li><a href="marketMain_Temp">밀키트</a></li>
                   <li class="current"><a href="reviewMain_Temp">후기</a></li>
                   <li><a href="campingAreaMain_Temp">주변 캠핑장 </a></li>
                   <li class="with_ul"><a href="memberInfo_Temp">회원 정보</a>
				   	<ul>
                         <li><a href="#"> cuisine</a></li>
                         <li><a href="#">Good rest</a></li>
                         <li><a href="#">Services</a></li>
                         <li><a href="makeSampleId">샘플 로그인!</a></li>
                     </ul>
				   </li>
                   <li><a href="login_Temp">로그인</a></li>
             </ul>
           </nav>
           <div class="clear"></div>
           </div>
           <div class="clear"></div>
		</div>
      </div>
    </div>
</header>
<!--  <div class="slider-relative">
    <div class="slider-block">
      <div class="slider">
        <ul class="items">
          <li><img src="resources/assets/img/images/slide.jpg" alt=""></li>
          <li><img src="resources/assets/img/images/slide1.jpg" alt=""></li>
          <li class="mb0"><img src="resources/assets/img/images/slide2.jpg" alt=""></li>
        </ul>
      </div>
    </div>
 </div> -->
<!--=======content================================-->

<div class="content page1">
  <div class="zerogrid">
      
	  <div class="row">
      <div class="col-full">
	  	<div class="wrap-col">
        <div class="car_wrap">
        <div class="review" align="center">
        <hr>
        
        <form  enctype="multipart/form-data">
        <input type="hidden" name="idx" value="${vo.idx}">
		<table border="1" >
			<tr>
				<td>
				<div class="input-group mb-3">
  				<span class="input-group-text" id="inputGroup-sizing-default">작성자</span>
  				<input value="${vo.memberid}" name="memberid" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
				</div>
				</td>
			</tr>
			
			<tr>
				<td>
				<div class="input-group mb-3">
  				<span class="input-group-text" id="inputGroup-sizing-default">상품명</span>
  				<input value="${vo.productid }" name="productid" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
				</div>
				</td>
			</tr>
			
			<tr>
				<td>
				<div class="input-group mb-3">
  				<span class="input-group-text" id="inputGroup-sizing-default">제목</span>
  				<input value="${vo.title}" name="title" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
				</div>
				</td>
			</tr>
			
			<tr>
				<td>
				<div class="input-group mb-3">
  				<span class="input-group-text" id="inputGroup-sizing-default">후기</span>
  				<input value="${vo.content}" name="content" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
				</div>
				</td>
			</tr>
					
			<tr>
				<td>
				<div class="input-group mb-3">
  				<span class="input-group-text" id="inputGroup-sizing-default">비밀번호</span>
  				<input value="${vo.pwd}" name="pwd" type="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
				</div>
				</td>
			</tr>
			
			<tr>
				<td>
				<div class="input-group mb-3">
  				<span class="input-group-text" id="inputGroup-sizing-default">${vo.filename}</span>
  				<input value="${vo.filename}" name="file" type="file" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
				</div>
				</td>
			</tr>
			
			<tr>
				<td>
				<div class="input-group mb-3">
  				<span class="input-group-text" id="inputGroup-sizing-default">작성일</span>
  				<input value="${vo.regdate}" name="regdate" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
				</div>
				</td>
			</tr>
			
			<tr>
				<td>
				<div class="input-group mb-3">
  				<span class="input-group-text" id="inputGroup-sizing-default">조회수</span>
  				<input value="${vo.readhit}" name="readhit" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
				</div>
				</td>
			</tr>
			
			<tr>
				<td>
				<div class="input-group mb-3">
  				<span class="input-group-text" id="inputGroup-sizing-default">작성일</span>
  				<input value="${vo.joayo}" name="joayo" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
				</div>
				</td>
			</tr>

			<tr>
				<td colspan="2" align="center">
					<button type="button" class="btn btn-outline-success" onclick="update(this.form)">수정완료</button>
					<button type="button" class="btn btn-outline-primary" onclick="location.href='reviewMain.do'">돌아가기</button>
				</td>
			</tr>
		
		</table>
		
	</form>
	
	</div>
      </div>
	  </div>
    </div>
	</div>
  </div>
</div>
<!--==============================footer=================================-->

<footer>    
  <div class="zerogrid">
    <div class="col-full">
		<div class="wrap-col">
	 	</div>
    </div>
  </div>
</footer>
</body>
</html>
