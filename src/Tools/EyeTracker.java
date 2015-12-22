package Tools;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class EyeTracker {
	public static void  openEyeTracker()
	{
		Runtime r = Runtime.getRuntime();

		Process p = null;
		
		try {
			p = r.exec("D:\\tobii-analytics-sdk-x64\\DotNet\\Basic Eyetracking Sample\\bin\\Debug\\Basic Eyetracking Sample.exe ");
			BufferClear clear=new BufferClear(p);
			clear.start();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
