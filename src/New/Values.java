package New;

import java.io.PrintWriter;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.http.HttpServletResponse;

public class Values {
	
	public String validate(String uname, String pass) {
		//String driver = "com.mysql.jdbc.Driver";  
		//String connection = "jdbc:mysql://localhost/emp";
		//String user = "root";
		 //String password = "P@ssw0rd";
		 
		 Class.forName("com.mysql.jdbc.Driver");
		 
		 Connection con = DriverManager.getConnection("jdbc:mysql://localhost/emp", "root", "P@ssw0rd");
		 /*String query = "insert into users (username, password) values (?, ?)";
		 PreparedStatement preparedStmt = con.prepareStatement(query);
		   preparedStmt.setString (1,name);
		   preparedStmt.setString (2, pwd);
		   preparedStmt.executeUpdate();
		   */
		// PrintWriter out = response.getWriter();
			
		//	String name= req.getParameter("uname");
			//String pwd= req.getParameter("pword");
		   Statement st = con.createStatement();
		   String sql = ("SELECT * FROM users where username='"+uname+"' and password='"+pass+"';");

		  
			   ResultSet rs=st.executeQuery(sql);
			
			   if(!(rs.next())){
				 	return "No";
				 
			   }
			   
			   else{
				   
			   while(rs.next()){
			   	String un = rs.getString(2);
			   	String pw = rs.getString(3);
			   	
			   	if(un.equals(uname) && pw.equals(pass))
			   		return "Welcome";
			   
			   }
			   }
			return "null";
	
	}
		
}
