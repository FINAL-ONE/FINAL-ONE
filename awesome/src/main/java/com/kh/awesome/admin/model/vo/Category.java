package com.kh.awesome.admin.model.vo;

import java.sql.Date;

public class Category {

	private String cateCd;
	private String cateNm;
	private String lclCd;
	private String mclCd;
	private String sclCd;
	private String cateLvl;
	private String useYn;
	private Date regDtm;
	private Date modDtm;

	private String lcateNm;
	private String mcateNm;
	private String scateNm;

	public Category() {
		super();
	}

	public Category(String cateCd, String cateNm, String lclCd, String mclCd, String sclCd, String cateLvl,
			String useYn, Date regDtm, Date modDtm, String lcateNm, String mcateNm, String scateNm) {
		super();
		this.cateCd = cateCd;
		this.cateNm = cateNm;
		this.lclCd = lclCd;
		this.mclCd = mclCd;
		this.sclCd = sclCd;
		this.cateLvl = cateLvl;
		this.useYn = useYn;
		this.regDtm = regDtm;
		this.modDtm = modDtm;
		this.lcateNm = lcateNm;
		this.mcateNm = mcateNm;
		this.scateNm = scateNm;
	}

	public String getCateCd() {
		return cateCd;
	}

	public void setCateCd(String cateCd) {
		this.cateCd = cateCd;
	}

	public String getCateNm() {
		return cateNm;
	}

	public void setCateNm(String cateNm) {
		this.cateNm = cateNm;
	}

	public String getLclCd() {
		return lclCd;
	}

	public void setLclCd(String lclCd) {
		this.lclCd = lclCd;
	}

	public String getMclCd() {
		return mclCd;
	}

	public void setMclCd(String mclCd) {
		this.mclCd = mclCd;
	}

	public String getSclCd() {
		return sclCd;
	}

	public void setSclCd(String sclCd) {
		this.sclCd = sclCd;
	}

	public String getCateLvl() {
		return cateLvl;
	}

	public void setCateLvl(String cateLvl) {
		this.cateLvl = cateLvl;
	}

	public String getUseYn() {
		return useYn;
	}

	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}

	public Date getRegDtm() {
		return regDtm;
	}

	public void setRegDtm(Date regDtm) {
		this.regDtm = regDtm;
	}

	public Date getModDtm() {
		return modDtm;
	}

	public void setModDtm(Date modDtm) {
		this.modDtm = modDtm;
	}

	public String getLcateNm() {
		return lcateNm;
	}

	public void setLcateNm(String lcateNm) {
		this.lcateNm = lcateNm;
	}

	public String getMcateNm() {
		return mcateNm;
	}

	public void setMcateNm(String mcateNm) {
		this.mcateNm = mcateNm;
	}

	public String getScateNm() {
		return scateNm;
	}

	public void setScateNm(String scateNm) {
		this.scateNm = scateNm;
	}

	@Override
	public String toString() {
		return "Category [cateCd=" + cateCd + ", cateNm=" + cateNm + ", lclCd=" + lclCd + ", mclCd=" + mclCd
				+ ", sclCd=" + sclCd + ", cateLvl=" + cateLvl + ", useYn=" + useYn + ", regDtm=" + regDtm + ", modDtm="
				+ modDtm + ", lcateNm=" + lcateNm + ", mcateNm=" + mcateNm + ", scateNm=" + scateNm + "]";
	}
	
	
}
