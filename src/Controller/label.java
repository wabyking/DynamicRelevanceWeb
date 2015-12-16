package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.Label;
import util.QueryDocumentsPair;
import util.Random;
import DAO.LabelDAO;
import DAO.QueryDocumentPairDAO;

/**
 * Servlet implementation class label
 */
@WebServlet("/label")
public class label extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public label() {
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
		
		String value=request.getParameter("value");
		String qid=request.getParameter("id");
		String which=request.getParameter("which");
		
		HttpSession session = request.getSession();
		String name=(String)session.getAttribute("user");
		LabelDAO.label(name, new Label(Integer.parseInt(qid),Integer.parseInt(which),Integer.parseInt(value)));
		
		List<QueryDocumentsPair> qds= (List<QueryDocumentsPair>)session.getAttribute("docs");
		List<Integer> option= (List<Integer>)session.getAttribute("option");
		int step=(int)session.getAttribute("step");
		
		
		String next=request.getParameter("next");
		if(next==null)
		{
			
			request.getRequestDispatcher("/relax.jsp").forward(request,response);
		}
		else if(Integer.parseInt(next)==1)
		{
			request.setAttribute("which",1);
			request.setAttribute("next",0);
			request.getRequestDispatcher("document.jsp").forward(request,response);
		}
		else
		{
			request.getRequestDispatcher("/relax.jsp").forward(request,response);
		}
		//String step=request.getParameter("step");

	}

}
