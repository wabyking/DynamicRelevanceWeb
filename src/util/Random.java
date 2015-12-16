package util;
import java.util.Collections;
import java.util.List;
import java.util.ArrayList;
public class Random {
	public static List<Integer> getBoolList(int size)
	{
		List list=new ArrayList<Integer>();
		java.util.Random random=new java.util.Random();
		for(int i=0;i<size;i++){
			int num=random.nextInt(2);
			System.out.println(num);
			list.add(num);
		}
		return list;
	}
	
	public static List<Integer> randomOrder(int len)
	{
		List<Integer> list = new ArrayList<Integer>();    
        for(int i = 0;i <len;i++){    
        	list.add(i);
        }    
        System.out.println();    
            
        Collections.shuffle(list); 
        return list;
	}
	
	
	public static void main(String args[]){
		System.out.println(getBoolList(10).size());
	}

}
