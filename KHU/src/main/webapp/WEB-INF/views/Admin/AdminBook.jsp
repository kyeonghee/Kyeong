<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!--스프링 유효성 체크를 위해 스프링의 태그라이브러리 spring,form
태그라이브러리를 등록하자.  -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:import url="/Admin/AdminTop" />

<script>
	
</script>
<!-- <div class="text-center section">
	<div class="col-md-12">
		<img src="../images/관리자배경.PNG" width="55%">
	 </div>
</div>-->
<div class="container">
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<h1 style="margin-bottom: 20px">도서 등록</h1>
			<!-- modelAttribute는 id와 동일 -->
			<form:form modelAttribute="book" action="bookInsert" method="POST"
				enctype="multipart/form-data">
				<table class="table table-condensed table-bordered">
					<tbody>
									
						<tr>
							<td width="10%"><b>도서명</b></td>
							<td width="90%"><input type="text" name="bookName" id="bookName"> 
						</td>
						</tr>
						<tr>
							<td width="20%"><b>저자</b></td>
							<td width="80%"><input type="text" name="author"
								id="author"></td>
						</tr>
						<tr>
							<td width="20%"><b>출판사</b></td>
							<td width="80%"><input type="text" name="publisher"
								id="publisher"></td>
						</tr>
						<tr>
							<td width="20%"><b>출판날짜</b></td>
							<td width="80%"><input type="text" name="publishDate"
								id="publishDate"></td>
						</tr>
						<tr>
							<td><b>상품이미지</b></td>
							<td><input type="file" name="bookImage"><br></td>
						</tr>


					</tbody>
				</table>
				<div style="text-align: center">
				<button class="btn btn-warning">도서등록</button>
				</div>
			</form:form>
		</div>
	</div>
</div>
<c:import url="/foot" />