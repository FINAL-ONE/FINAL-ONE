package com.kh.awesome.diary.model.vo;

import java.io.Serializable;
import java.sql.Date;

/**
 * Diary VO
 * @author mijin
 *
 */
public class Diary implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5453244011625878271L;
	
	private int dId;			// 글 번호
	private int mId;			// 멤버 아이디
	private Date writeDate;		// 작성일
	private int weight;			// 몸무게
	private String breakfast;	// 아침
	private String bFilePath;	// 아침 사진
	private String lunch;		// 점심
	private String lFilePath;	// 점심 사진
	private String dinner;		// 저녁
	private String dFilePath;	// 저녁 사진
	private String snack;		// 간식
	private String sFilePath;	// 간식 사진
	private String drinkWater;	// 물 섭취량
	private String excercise;	// 운동
	private String memo;		// 메모
	private String status;		// 상태
	
	public Diary() {
		
	}

	public Diary(int dId, int mId, Date writeDate, int weight, String breakfast, String bFilePath, String lunch,
			String lFilePath, String dinner, String dFilePath, String snack, String sFilePath, String drinkWater,
			String excercise, String memo, String status) {
		super();
		this.dId = dId;
		this.mId = mId;
		this.writeDate = writeDate;
		this.weight = weight;
		this.breakfast = breakfast;
		this.bFilePath = bFilePath;
		this.lunch = lunch;
		this.lFilePath = lFilePath;
		this.dinner = dinner;
		this.dFilePath = dFilePath;
		this.snack = snack;
		this.sFilePath = sFilePath;
		this.drinkWater = drinkWater;
		this.excercise = excercise;
		this.memo = memo;
		this.status = status;
	}

	public int getdId() {
		return dId;
	}

	public void setdId(int dId) {
		this.dId = dId;
	}

	public int getmId() {
		return mId;
	}

	public void setmId(int mId) {
		this.mId = mId;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public String getBreakfast() {
		return breakfast;
	}

	public void setBreakfast(String breakfast) {
		this.breakfast = breakfast;
	}

	public String getbFilePath() {
		return bFilePath;
	}

	public void setbFilePath(String bFilePath) {
		this.bFilePath = bFilePath;
	}

	public String getLunch() {
		return lunch;
	}

	public void setLunch(String lunch) {
		this.lunch = lunch;
	}

	public String getlFilePath() {
		return lFilePath;
	}

	public void setlFilePath(String lFilePath) {
		this.lFilePath = lFilePath;
	}

	public String getDinner() {
		return dinner;
	}

	public void setDinner(String dinner) {
		this.dinner = dinner;
	}

	public String getdFilePath() {
		return dFilePath;
	}

	public void setdFilePath(String dFilePath) {
		this.dFilePath = dFilePath;
	}

	public String getSnack() {
		return snack;
	}

	public void setSnack(String snack) {
		this.snack = snack;
	}

	public String getsFilePath() {
		return sFilePath;
	}

	public void setsFilePath(String sFilePath) {
		this.sFilePath = sFilePath;
	}

	public String getDrinkWater() {
		return drinkWater;
	}

	public void setDrinkWater(String drinkWater) {
		this.drinkWater = drinkWater;
	}

	public String getExcercise() {
		return excercise;
	}

	public void setExcercise(String excercise) {
		this.excercise = excercise;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Diary [dId=" + dId + ", mId=" + mId + ", writeDate=" + writeDate + ", weight=" + weight + ", breakfast="
				+ breakfast + ", bFilePath=" + bFilePath + ", lunch=" + lunch + ", lFilePath=" + lFilePath + ", dinner="
				+ dinner + ", dFilePath=" + dFilePath + ", snack=" + snack + ", sFilePath=" + sFilePath
				+ ", drinkWater=" + drinkWater + ", excercise=" + excercise + ", memo=" + memo + ", status=" + status
				+ "]";
	}
	
	
	
}
