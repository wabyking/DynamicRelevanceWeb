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
 * Servlet implementation class nextExperiment
 */
@WebServlet("/nextExperiment")
public class nextExperiment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public nextExperiment() {
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
				 step=(int)session.getAttribute("step")+1;
		session.setAttribute("step",step);
		List<Integer> option=(List<Integer>) session.getAttribute("option");
		if(option.get(step)==1)
			request.setAttribute("doubleFlag",1);
		request.getRequestDispatcher("/test.jsp").forward(request,response);
	}

}
