package New;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.jws.WebService;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class Controller extends HttpServlet {
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		
		String uname = req.getParameter("uname");
		String pass = req.getParameter("pword");
		PrintWriter out = res.getWriter();
		out.println(uname);
		out.println(pass);
		Values v = new Values();
		
		String s = null;
		
			 s =v.validate(uname, pass);
		
		
		
	
	}
	    
	
}


