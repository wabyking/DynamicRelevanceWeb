package Controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class regedit
 */
@WebServlet("/regedit")
public class regedit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public regedit() {
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
		String username= request.getParameter("username");
		String goon= request.getParameter("goon");
		if(username!=null)
		{
			HttpSession session=request.getSession();
			 Long timeStamp = System.currentTimeMillis();  //获取当前时间戳
		     SimpleDateFormat sdf=new SimpleDateFormat("$yyyy-MM-dd-HH:mm:ss");
		     String sd = sdf.format(new Date(Long.parseLong(String.valueOf(timeStamp))));   
			session.setAttribute("user", username+sd);
		}
		if(goon!=null&&goon=="1")
		{
			request.getRequestDispatcher("questionOption.jsp").forward(request, response);
		}
		else
			request.getRequestDispatcher("startExperiment").forward(request, response);
		
	}

}
