package Controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class openEyeTracker
 */
@WebServlet("/openEyeTracker")
public class openEyeTracker extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public openEyeTracker() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
			Runtime r = Runtime.getRuntime();

			Process p = null;
			try {
				p = r.exec("D:\\tobii-analytics-sdk-x64\\DotNet\\Basic Eyetracking Sample\\bin\\Debug\\Basic Eyetracking Sample.exe ");
				InputStream fis = p.getInputStream();
				BufferedReader br = new BufferedReader(new InputStreamReader(fis));
				String line = null;
//sword +"\t" + countTimes + "\t" + seeTime + "\t" + gd.LeftPupilDiameter + "\t" + gd.RightPupilDiameter + "\t" +gd.Timestamp + "\n";
				while ((line = br.readLine()) != null) {
					
					System.out.println(line);
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			
		}

	

}
