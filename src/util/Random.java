package util;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.List;
import java.util.ArrayList;
public class Random {
	public static List<Integer> getBoolList(int size)
	{
		List<Integer> list=new ArrayList<Integer>();
		java.util.Random random=new java.util.Random();
		for(int i=0;i<size;i++){
			int num=random.nextInt(2);
			System.out.println(num);
			list.add(num);
		}
		return list;
	}
	
	
    public static List<Integer> getBoolListForTwoOption(int size,int num)
	{
    	List<Integer> list=new ArrayList<Integer>();
    	 
		for(int i=0;i<size;i++){
			//System.out.println(num);
			list.add(num);
		}
		return list;
	}
    
	public static List<Integer> getBoolListWithoutRandom(int size)
	{
		List<Integer> list=new ArrayList<Integer>();
		
		for(int i=0;i<size;i++){
			int num=i%2;
			System.out.println(num);
			list.add(num);
		}
		return list;
	}
	
	public static List<Integer> getOringinalOrder(int size)
	{
		List<Integer> list=new ArrayList<Integer>();
		
		for(int i=0;i<size;i++){
			list.add(i);
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
	public static int  getHaspGroup(String name)
	{
		MessageDigest mdInst=null;
		try {
			mdInst = MessageDigest.getInstance("MD5");
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
         // 使用指定的字节更新摘要
         mdInst.update(name.getBytes());
         // 获得密文
         byte[] md = mdInst.digest();
         System.out.println(md);
		return Math.abs(md[10]%2);
		
	}
	
	public static void main(String args[]){
		String names[]={"waby","lj","doublelin","lichao","szg","asia","zp","lr","lixiang"};
		for(String name : names)
			System.out.println(getBoolListForTwoOption(10,getHaspGroup(name)));
	}

}
