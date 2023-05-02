package data.camping;

public class Item {
	String contentId; //컨텐츠 ID
	String facltNm;   //야영장 명
	String lineIntro; //한줄소개
	String intro;     //소개
	String induty;    //업종
	String lctCl;     // 입자구분
	String doNm;      //도
	String sigunguNm; // 시,군, 구
	String zipcode;   //우편번호
	String addr1;     //주소
	String addr2;     //상세주소
	String mapX;      //경도(x)
	String mapY;      //위도(y)
	String direction;  //오시는길 컨텐츠
	String tel;        //전화번호
	String homepage;   //홈페이지 주소
	String tooltip;    // 툴팁
	String caravInnerFclty;   // 카라반 내부시설
	String operPdCl;		  //운영기간
	String operDeCl;          //운영일
	String sbrsEtc;           //부대시설 기타
	String animalCmgCl;       //애완동물출입  
	String tourEraCl;         //여행시기
	String firstImageUrl;     //대표이미지
	
	public String getContentId() {
		return contentId;
	}
	public void setContentId(String contentId) {
		this.contentId = contentId;
	}
	public String getFacltNm() {
		return facltNm;
	}
	public void setFacltNm(String facltNm) {
		this.facltNm = facltNm;
	}
	public String getLineIntro() {
		return lineIntro;
	}
	public void setLineIntro(String lineIntro) {
		this.lineIntro = lineIntro;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getInduty() {
		return induty;
	}
	public void setInduty(String induty) {
		this.induty = induty;
	}
	public String getLctCl() {
		return lctCl;
	}
	public void setLctCl(String lctCl) {
		this.lctCl = lctCl;
	}
	public String getDoNm() {
		return doNm;
	}
	public void setDoNm(String doNm) {
		this.doNm = doNm;
	}
	public String getSigunguNm() {
		return sigunguNm;
	}
	public void setSigunguNm(String sigunguNm) {
		this.sigunguNm = sigunguNm;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getMapX() {
		return mapX;
	}
	public void setMapX(String mapX) {
		this.mapX = mapX;
	}
	public String getMapY() {
		return mapY;
	}
	public void setMapY(String mapY) {
		this.mapY = mapY;
	}
	public String getDirection() {
		return direction;
	}
	public void setDirection(String direction) {
		this.direction = direction;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	public String getTooltip() {
		return tooltip;
	}
	public void setTooltip(String tooltip) {
		this.tooltip = tooltip;
	}
	public String getCaravInnerFclty() {
		return caravInnerFclty;
	}
	public void setCaravInnerFclty(String caravInnerFclty) {
		this.caravInnerFclty = caravInnerFclty;
	}
	public String getOperPdCl() {
		return operPdCl;
	}
	public void setOperPdCl(String operPdCl) {
		this.operPdCl = operPdCl;
	}
	public String getOperDeCl() {
		return operDeCl;
	}
	public void setOperDeCl(String operDeCl) {
		this.operDeCl = operDeCl;
	}
	public String getSbrsEtc() {
		return sbrsEtc;
	}
	public void setSbrsEtc(String sbrsEtc) {
		this.sbrsEtc = sbrsEtc;
	}
	public String getAnimalCmgCl() {
		return animalCmgCl;
	}
	public void setAnimalCmgCl(String animalCmgCl) {
		this.animalCmgCl = animalCmgCl;
	}
	public String getTourEraCl() {
		return tourEraCl;
	}
	public void setTourEraCl(String tourEraCl) {
		this.tourEraCl = tourEraCl;
	}
	public String getFirstImageUrl() {
		return firstImageUrl;
	}
	public void setFirstImageUrl(String firstImageUrl) {
		this.firstImageUrl = firstImageUrl;
	}
	
	
	
	@Override
	public String toString() {
		return "Item [contentId=" + contentId + ", facltNm=" + facltNm + ", lineIntro=" + lineIntro + ", intro=" + intro
				+ ", induty=" + induty + ", lctCl=" + lctCl + ", doNm=" + doNm + ", sigunguNm=" + sigunguNm
				+ ", zipcode=" + zipcode + ", addr1=" + addr1 + ", addr2=" + addr2 + ", mapX=" + mapX + ", mapY=" + mapY
				+ ", direction=" + direction + ", tel=" + tel + ", homepage=" + homepage + ", tooltip=" + tooltip
				+ ", caravInnerFclty=" + caravInnerFclty + ", operPdCl=" + operPdCl + ", operDeCl=" + operDeCl
				+ ", sbrsEtc=" + sbrsEtc + ", animalCmgCl=" + animalCmgCl + ", tourEraCl=" + tourEraCl
				+ ", firstImageUrl=" + firstImageUrl + ", getContentId()=" + getContentId() + ", getFacltNm()="
				+ getFacltNm() + ", getLineIntro()=" + getLineIntro() + ", getIntro()=" + getIntro() + ", getInduty()="
				+ getInduty() + ", getLctCl()=" + getLctCl() + ", getDoNm()=" + getDoNm() + ", getSigunguNm()="
				+ getSigunguNm() + ", getZipcode()=" + getZipcode() + ", getAddr1()=" + getAddr1() + ", getAddr2()="
				+ getAddr2() + ", getMapX()=" + getMapX() + ", getMapY()=" + getMapY() + ", getDirection()="
				+ getDirection() + ", getTel()=" + getTel() + ", getHomepage()=" + getHomepage() + ", getTooltip()="
				+ getTooltip() + ", getCaravInnerFclty()=" + getCaravInnerFclty() + ", getOperPdCl()=" + getOperPdCl()
				+ ", getOperDeCl()=" + getOperDeCl() + ", getSbrsEtc()=" + getSbrsEtc() + ", getAnimalCmgCl()="
				+ getAnimalCmgCl() + ", getTourEraCl()=" + getTourEraCl() + ", getFirstImageUrl()=" + getFirstImageUrl()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	
	
}