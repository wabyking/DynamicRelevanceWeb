package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class displayDocument
 */
@WebServlet("/viewDocument")
public class viewDocument extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewDocument() {
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
		int step=0;
		HttpSession session = request.getSession();
		if(null!=session.getAttribute("step"))
				 step=(int)session.getAttribute("step");
		
		List<Integer> option=(List<Integer>) session.getAttribute("option");
		int which=Integer.parseInt(request.getParameter("which"));

		if(which==-1)
		{
			
			if(option.get(step)==1)
			{
				
				request.setAttribute("which",0);
				request.setAttribute("next",1);
			}
			else
			{
				request.setAttribute("which",1);
				request.setAttribute("next",0);
			}
			
	        
		}
		else if(which==0)  //will see the interfered document, so you will get a next document
		{
			request.setAttribute("which",0);
			request.setAttribute("next",1);
		}
		else               //means over
		{
			request.setAttribute("which",1);
			request.setAttribute("next",0);
			
		}
		//which means the second document. next means next one
		request.getRequestDispatcher("document.jsp").forward(request,response);
		  
	}

}
