package util;

import java.io.Serializable;

public class Label implements Serializable{
	int order;
	int id;
	int value;
	public Label(int id,int order,int value)
	{
		this.id=id;
		this.order=order;
		this.value=value;
	}
	public int getOrder() {
		return order;
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
