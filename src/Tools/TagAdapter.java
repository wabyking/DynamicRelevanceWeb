package Tools;

import java.util.StringTokenizer;

public class TagAdapter {
	
	public static String convertAbstract(String html)
	{
		String result=" ";
		StringTokenizer st=new StringTokenizer(html);
		int i=0;
		while(st.hasMoreTokens()&&i++<50)
			result+="<a>"+st.nextToken()+" </a>";
		return result;
		
	}
	public static String convert(String html)
	{
		String result=" ";
		if(!ChineseChar.isChinese(html))
		{
			StringTokenizer st=new StringTokenizer(html);
			while(st.hasMoreTokens())
				result+="<a>"+st.nextToken()+" </a>";
			return result;
		}
		StringTokenizer st=new StringTokenizer(html);
		while(st.hasMoreTokens())
			result+="<a>"+st.nextToken()+"</a>";
		return result;
		
	}
	public static String convertSide(String html)
	{
		String result=" ";
		StringTokenizer st=new StringTokenizer(html);
		while(st.hasMoreTokens())
			result+="<a>"+st.nextToken()+"<br/> </a>";
		return result;
		
	}

}
