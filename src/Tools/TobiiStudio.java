package Tools;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class TobiiStudio {
	final static String path="C:\\Program Files (x86)\\Tobii\\Tobii Studio\\Studio.Launcher.exe Unnamed project2";
	
	public static void  openTobii()
	{
		Runtime r = Runtime.getRuntime();

		Process p = null;
		try {
			p = r.exec(path);
			InputStream fis = p.getInputStream();
			BufferedReader br = new BufferedReader(new InputStreamReader(fis));
//			String line = null;
//sword +"\t" + countTimes + "\t" + seeTime + "\t" + gd.LeftPupilDiameter + "\t" + gd.RightPupilDiameter + "\t" +gd.Timestamp + "\n";
//			while ((line = br.readLine()) != null) {
//				
//				System.out.println(line);
//			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
