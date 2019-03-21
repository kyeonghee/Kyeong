<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String myctx = request.getContextPath();
%>
<style>
.carousel-inner {
	width: 100%;
	max-height: 570px;
	margin: auto;
}
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
</style>
<div class="row" style="margin-top:30px">
	<div class="col-md-12">
		<div id="myCarousel" class="carousel slide" data-ride="carousel"
			data-interval="3000">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/c1.jpg">
				</div>

				<div class="item">
					<img src="images/c2.jpg">
				</div>

				<div class="item">
					<img src="images/c3.jpg">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel"
				data-slide="prev"><i class="icon-prev fa fa-angle-left"></i></a><a
				class="right carousel-control" href="#myCarousel"
				data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
		</div><!-- carousel -->
		
	</div><!-- col-md-12 -->
</div><!-- row -->
 
 <div class="section">
      <div class="container">
         <div class="row">
            <div class="col-md-12" style="background-color: floralwhite">
               <div class="col-md-3" align="center" style="margin-top: 15px">
                  <a href="#"><img src="images/학사정보.png" style="width: 40%"></a>
                  <p style="font-family:'Jeju Gothic';margin-top:10px">종합정보시스템</p>
               </div> 
               <div class="col-md-3" align="center" style="margin-top: 15px">
                  <a href="<%=myctx%>/Book/BookM"><img src="images/도서관.png" style="width: 40%"></a>
                  <p style="font-family:'Jeju Gothic';margin-top:10px">도서관</p>
               </div>
               <div class="col-md-3" align="center" style="margin-top: 15px">
                  <a href="#"><img src="images/버스.png" style="width: 40%"></a>
                  <p style="font-family:'Jeju Gothic';margin-top:10px">통학버스안내</p>
               </div>
               <div class="col-md-3" align="center" style="margin-top: 15px">
               <c:if test="${loginUser eq null }">
                 <a href="#BModal" data-toggle="modal"><img src="images/기숙사.png" style="width: 40%"></a>
                  <p style="font-family:'Jeju Gothic';margin-top:10px">기숙사신청</p>
               </c:if>
               <c:if test="${loginUser ne null }">
               	  <a href="<%=myctx%>/user/Dorm/DormM"><img src="images/기숙사.png" style="width: 40%"></a>
                  <p style="font-family:'Jeju Gothic';margin-top:10px">기숙사신청</p>
               </c:if>
               </div> 
            </div>
         </div>
         <div class="row">
            <div class="col-md-6" style="margin-top: 15px">
               <h2 style="font-family:'Jeju Gothic'">공지 사항</h2>
            </div>
            <div class="col-md-6" style="margin-top: 15px">
               <h2 style="font-family:'Jeju Gothic'">캠퍼스 안내</h2>
            </div>
         </div>
      </div>
   </div>