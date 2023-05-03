<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/commons/top.jsp"%>


<%-- 캠핑장 상세정보 페이지 --%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<style>
table {
	border-collapse: collapse;
	width: 40%;
	float: right;
}

th, td {
	padding: 8px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #f2f2f2;
}

.container {
	display: flex;
	flex-direction: row-reverse;
	justify-content: flex-start;
	align-items: center;
	margin: 20px;
}

.heart-icon.fas {
	color: red;
}
</style>
<meta charset="UTF-8">
<title>camping sketch</title>
</head>
<body>


	<img src="${camp.firstImageUrl }"
		onerror="this.src='/resource/image/tent.png';"
		style="max-width: 500px; height: 300px; float: left;" />
	<c:if test="${sessionScope.logon}">
		<button id="likeButton" onclick="toggleLike()">
			<i id="likeIcon" class="far fa-heart heart-icon"></i>
		</button>
	</c:if>

	<div style="display: flex; flex-direction: row-reverse;">


		<table>

			<tr>
				<th>항목</th>
				<th>내용</th>
			</tr>
			<tr>
				<td>캠핑장 명</td>
				<c:choose>
					<c:when test="${not empty camp.facltNm}">
						<td>${camp.facltNm.replace("(주)", " ")}</td>
					</c:when>
					<c:otherwise>
						<td>-
						<td>
					</c:otherwise>
				</c:choose>
			</tr>
			<tr>
				<td>주소</td>
				<c:choose>
					<c:when test="${not empty camp.addr1}">
						<td>${camp.addr1}</td>
					</c:when>
					<c:otherwise>
						<td>-
						<td>
					</c:otherwise>
				</c:choose>
			</tr>
			<tr>
				<td>연락처</td>
				<c:choose>
					<c:when test="${not empty camp.tel}">
						<td>${camp.tel}</td>
					</c:when>
					<c:otherwise>
						<td>-
						<td>
					</c:otherwise>
				</c:choose>

			</tr>
			<tr>
				<td>홈페이지 주소</td>
				<c:choose>
					<c:when test="${not empty camp.homepage}">
						<td><a href="${camp.homepage}">${camp.homepage}</a></td>
					</c:when>
					<c:otherwise>
						<td>-
						<td>
					</c:otherwise>
				</c:choose>

			</tr>
			<tr>
				<td>캠핑장 형태</td>
				<c:choose>
					<c:when test="${not empty camp.induty}">
						<td>${camp.induty}</td>
					</c:when>
					<c:otherwise>
						<td>-
						<td>
					</c:otherwise>
				</c:choose>

			</tr>
			<tr>
				<td>주변 환경</td>
				<c:choose>
					<c:when test="${not empty camp.lctCl}">
						<td>${camp.lctCl}</td>
					</c:when>
					<c:otherwise>
						<td>-
						<td>
					</c:otherwise>
				</c:choose>

			</tr>
			<tr>
				<td>운영기간</td>
				<c:choose>
					<c:when test="${not empty camp.operPdCl}">
						<td>${camp.operPdCl}</td>
					</c:when>
					<c:otherwise>
						<td>-
						<td>
					</c:otherwise>
				</c:choose>

			</tr>
			<tr>
				<td>운영일</td>
				<c:choose>
					<c:when test="${not empty camp.operDeCl}">
						<td>${camp.operDeCl}</td>
					</c:when>
					<c:otherwise>
						<td>-
						<td>
					</c:otherwise>
				</c:choose>

			</tr>
			<tr>
				<td>애완동물 출입</td>
				<c:choose>
					<c:when test="${not empty camp.animalCmgCl}">
						<td>${camp.animalCmgCl}</td>
					</c:when>
					<c:otherwise>
						<td>-
						<td>
					</c:otherwise>
				</c:choose>

			</tr>
			<tr>
				<td>캠핑장 소개</td>
				<c:choose>
					<c:when test="${not empty camp.lineIntro}">
						<td>${camp.lineIntro}</td>
					</c:when>
					<c:otherwise>
						<td>-
						<td>
					</c:otherwise>
				</c:choose>

			</tr>
		</table>
	</div>

	<div id="map"
		style="width: 100%; height: 270px; margin: auto; display: flex; justify-content: center; align-items: center; border: 1px solid #dddddd">

		<c:choose>
			<c:when test="${empty camp.addr1 }">
						지도정보를 확보 하지 못해 렌더링에 실패하였습니다.
					</c:when>
			<c:otherwise>
						지도를 불러옵니다.
					</c:otherwise>
		</c:choose>
	</div>




	<!-- 지도 관련 부분 -->
	<c:if test="${!empty camp.addr1}">
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fdd7a2dbaa2570a180f3c39b9a412437"></script>
		<script>
				
		let pos = new kakao.maps.LatLng(${camp.mapY}, ${camp.mapX}); //지도의 중심좌표.
		
		let container = document.querySelector('#map'); //지도를 담을 영역의 DOM 레퍼런스
		let options = { //지도를 생성할 때 필요한 기본 옵션
			center : pos, 
			level : 4
		//지도의 레벨(확대, 축소 정도)
		};

		let map = new kakao.maps.Map(document.querySelector('#map'), options); //지도 생성 및 객체 리턴
		
		let marker = new kakao.maps.Marker({
		    position: pos
		});
		
		marker.setMap(map);
		
		/* 좋아요 부분*/
		 let liked = false;
const likeIcon = document.getElementById("likeIcon");

function toggleLike() {
  if (liked) {
    likeIcon.classList.remove("fas");
    likeIcon.classList.add("far");
    fetch('/unlike', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ 
        id : sessionScope.logonUser.id, 
        campname : camp.facltNm
      }),
    })
    .then(response => {
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      return response.json();
    })
    .then(data => {
      console.log(data);
    })
    .catch(error => {
      console.error('Error:', error);
    });
  } else {
    likeIcon.classList.remove("far");
    likeIcon.classList.add("fas");
    fetch('/like', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ 
        id : sessionScope.logonUser.id, 
        campname : camp.facltNm
      }),
    })
    .then(response => {
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      return response.json();
    })
    .then(data => {
      console.log(data);
    })
    .catch(error => {
      console.error('Error:', error);
    });
  }
  liked = !liked;
}

		
		
	</script>
	</c:if>
</body>
</html>