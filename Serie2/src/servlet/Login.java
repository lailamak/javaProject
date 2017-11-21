package servlet;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Membre;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public HashMap<String,String> membres = new HashMap<String,String>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
       
        membres.put("laila", "111111");
        membres.put("ayoub", "111111");
        membres.put("hasna", "111111");
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");

		String msg;
		
		if(username.trim().isEmpty() || password.trim().isEmpty()  ){
	        msg = "vous devez entrer le username/password !";
	    	request.setAttribute("message", msg);
	    	this.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
	    }
	    
	    else{
	    	
	    	if(membres.containsKey(username) && membres.containsValue(password))
	    	{
	    	  
	    		Membre membre= new Membre();
		    	membre.setUsername(username);
		    	membre.setPassword(password);
		    	
		    	request.getSession().setAttribute("membre", membre);	
		    	
		    	//request.setAttribute("membre", membre);
		    	//meth senRedirect() elimine l'obj request existant et crée 1 nouveau obj request par contre forward..
		    	//+ pour sendRedirect() le chemin change contrairment a forward
		    	response.sendRedirect("espace_membre.jsp");
	    		
	    	}
	    	
	    	else{
	    		 msg = " username/password incorrect !";
	 	    	request.setAttribute("message", msg);
	 	    	this.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
	    		
	    	}
	    }
		
		
		
	}

}
