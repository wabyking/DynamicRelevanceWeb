package Tools;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class BufferClear extends Thread {
	Process process=null;
	public synchronized  void run()  
    {  
		InputStream fis = process.getInputStream();//���process�����������ݲ����ͷţ�����Ῠ��
		BufferedReader br = new BufferedReader(new InputStreamReader(fis));
		String line = null;
//sword +"\t" + countTimes + "\t" + seeTime + "\t" + gd.LeftPupilDiameter + "\t" + gd.RightPupilDiameter + "\t" +gd.Timestamp + "\n";
		try {
			while ((line = br.readLine()) != null) {
				
				;//System.out.println(line);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
    }  
	public BufferClear(Process p )
	{
		super();
		this.process=p;
	}
  

}
