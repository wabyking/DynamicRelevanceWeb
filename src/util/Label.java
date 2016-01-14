package util;

import java.io.Serializable;

public class Label implements Serializable{
	int order;
	int id;
	int value;
	int dno;
	public Label(int id,int order,int value,int dno)
	{
		this.id=id;
		this.order=order;
		this.value=value;
		this.dno=dno;
	}
	public int getOrder() {
		return order;
	}
	public int getDno() {
		return dno;
	}
	public void setDno(int dno) {
		this.dno = dno;
	}
	public void setOrder(int order) {
		this.order = order;
	}
	public int getId() {
		return id;
	}
	public void setId(int step) {
		this.id = step;
	}
	public int getValue() {
		return value;
	}
	public void setValue(int value) {
		this.value = value;
	}
	

}
