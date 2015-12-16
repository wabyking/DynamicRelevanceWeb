package util;

import java.io.Serializable;
import java.util.StringTokenizer;

public class EyeFixation implements Serializable {
	
	//sword +"\t" + countTimes + "\t" + seeTime + "\t" + gd.LeftPupilDiameter + "\t" + gd.RightPupilDiameter + "\t" +gd.Timestamp + "\n";
	String sword;
	int countTimes;
	float seeTime;
	float leftPupilDiameter;
	float rightPupilDiameter;
	long  timeStamp;
	public EyeFixation(String str)
	{
		
		StringTokenizer st=new StringTokenizer(str);
		sword=st.nextToken();
		countTimes=Integer.parseInt(st.nextToken());
		seeTime=Float.parseFloat(st.nextToken());
		leftPupilDiameter=Float.parseFloat(st.nextToken());
		rightPupilDiameter=Float.parseFloat(st.nextToken());
		timeStamp=Long.parseLong(st.nextToken());
		
		
	}
	public String toString()
	{
		return " ";
	}
	public String getSword() {
		return sword;
	}
	public void setSword(String sword) {
		this.sword = sword;
	}
	public int getCountTimes() {
		return countTimes;
	}
	public void setCountTimes(int countTimes) {
		this.countTimes = countTimes;
	}
	public float getSeeTime() {
		return seeTime;
	}
	public void setSeeTime(float seeTime) {
		this.seeTime = seeTime;
	}
	public float getLeftPupilDiameter() {
		return leftPupilDiameter;
	}
	public void setLeftPupilDiameter(float leftPupilDiameter) {
		this.leftPupilDiameter = leftPupilDiameter;
	}
	public float getRightPupilDiameter() {
		return rightPupilDiameter;
	}
	public void setRightPupilDiameter(float rightPupilDiameter) {
		this.rightPupilDiameter = rightPupilDiameter;
	}
	public long getTimeStamp() {
		return timeStamp;
	}
	public void setTimeStamp(long timeStamp) {
		this.timeStamp = timeStamp;
	}
	
}
