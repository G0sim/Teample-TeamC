<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/commons/top.jsp"%>

<!-- 검색 전체화면 -->
<div>
	<div style="font-size: 20px;">
		<div>지역별
		<select name="doNm">
			<option value="" ${param.doNm eq " ? 'selected' : "} >도</option>
			<c:forEach items="${datas }" var="obj">
				<option value="${obj.doNm}" ${param.doNm eq obj.doNm ? 'selected' : '' }>${obj.doNm }</option>
			</c:forEach>
		</select> 
		
		<select name="sigunguNm">
			<option value="" ${param.sigunguNm eq " ? 'selected' :  "}> 시/군/구</option>
			<c:forEach items="${datas }" var="obj">
				<option value="${obj.sigunguNm }" ${param.sigunguNm eq obj.sigunguNm ? 'selected' : ''}>${obj.sigunguNm }</option>
			</c:forEach>
		</select>
		</div>
		<div>테마별
		 <select name="lctCl">
		 	<option value="" ${param.lctCl eq " ? 'selected' :  "}>테마</option>
		 	<c:forEach items="${datas }" var="obj">
		 		<option value="${obj.lctCl }" ${param.lctCl eq obj.lctCl ? 'selected' : ''}>${obj.lctCl}</option>
		 	</c:forEach>
		 </select>
		<button type="submit">검색하기</button>
		</div>
		
		
	</div>

</div>
                 <!--  컴팽장 리스트 영역 -->
<div>
	<div>
	<c:choose>
		<c:when test="${total ne 0 }">
			${total }개의 캠핑색이 확인됩니다.
		</c:when>
		<c:otherwise>
			조회하신 캠핑장의 정보가 없습니다. 다시 검색해주세요.
		</c:otherwise>
	</c:choose>
	</div>
	<table>
		<c:forEach items="${datas }" var="list" >
				<tr onclick="location.href=''">
				<td><img src="${list.firstImageUrl }" style="height: 100px" /></td>
				<td>${list.facltNm.replace("(주)", " ")}</td>
				<td>${list.lineIntro }</td>
				<td>${list.addr1}</td>
		</c:forEach>
	</table>
</div>

<!-- 페이지 처리영역 -->
<div>
	<c:set var="currentPage" value="${empty param.pageNo ? 1: param.pageNo }" />
		
 <!-- 이전 버튼 -->
	<c:if test="${existPrev }">
		<c:url value="/search" var="target">
			<%-- <c:param name="doNm" value="${param.doNm }" />
			<c:param name="sigunguNm" value="${param.sigunguNm }" />
			<c:param name="lctCl" value="${param.lctCl }" /> --%>
			<c:param name="pageNo" value="${start-1 }" />
		</c:url>
		<a href="${target}" style="color: black;">&lt;</a>
	</c:if>
	
	<!-- 전체페이지 불러오기 -->
	<c:forEach var="p" begin="${start }" end="${last }">
		<c:url value="/search" var="target">
			<%-- <c:param name="doNm" value="${param.doNm }" />
			<c:param name="sigunguNm" value="${param.sigunguNm }" />
			<c:param name="lctCl" value="${param.lctCl }" /> --%>
			<c:param name="pageNo" value="${p }" />
		</c:url>
		<c:choose>
			<c:when test="${p eq currentPage }">
				<b style="color: red;">${p }</b>
			</c:when>
			<c:otherwise>
				<a href="${target }" style="color: black;">${p }</a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	
	<%--다음버튼영역 --%> 
	<c:if test="${existNext }">
		<c:url value="/search" var="target">
			<%-- <c:param name="doNm" value="${param.doNm }" />
			<c:param name="sigunguNm" value="${param.sigunguNm }" />
			<c:param name="lctCl" value="${param.lctCl }" /> --%>
			<c:param name="pageNo" value="${last + 1}" />
		</c:url>
	</c:if>
	<a href="${target }" style="color: black;">&gt;</a>
</div>

