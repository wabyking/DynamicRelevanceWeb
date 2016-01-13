package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Tools.ChineseName;
import Tools.EyeTracker;

import DAO.QueryDocumentPairDAO;
import DAO.UserDAO;

import util.QueryDocumentsPair;
import util.Random;
import DAO.LabelDAO;
/**
 * Servlet implementation class startExperiment
 */
@WebServlet("/startExperiment")
public class startExperiment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public startExperiment() {
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
		
		Map<Integer,QueryDocumentsPair> docs=QueryDocumentPairDAO.getAll();
		int len=docs.size();
		
		//for random order use the code below
//		List<Integer> option=Random.getBoolListWithoutRandom(len);
//		List<Integer> order=Random.randomOrder(len);
		
		HttpSession session = request.getSession();
        String name=(String)session.getAttribute("user");
        System.out.println(name);
        if(name==null){
//        	name=ChineseName.getName()+"~";
//        	session.setAttribute("user",name);
        	request.getRequestDispatcher("/question.jsp").forward(request,response);  
        	return ;
        }
        int group=Random.getHaspGroup(name);
        List<Integer> option=Random.getBoolListForTwoOption(len, group);
		List<Integer> order=Random.getOringinalOrder(len);
		
		//int group=option.get(0);
//		session.setAttribute("user",name);
//        session.setAttribute("group",group);
		
		
		List<QueryDocumentsPair> qds=new ArrayList<QueryDocumentsPair>();
		for(int i=0;i<len;i++)
		{
			QueryDocumentsPair qd=docs.get(order.get(i));
			qd.setOption(option.get(i));
			qds.add(qd);
			
		}
		
       // if (session.getAttribute("docs") == null) {
            session.setAttribute("docs",qds);
            session.setAttribute("len",len);
            session.setAttribute("option",option);
            session.setAttribute("order",order);
            session.setAttribute("step",0);
        //}
        LabelDAO.addUser(name,qds);
        request.getRequestDispatcher("/experiment.jsp").forward(request,response);  
		
		
		
	}
	
	

}
