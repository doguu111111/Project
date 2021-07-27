

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
/**
 * Servlet implementation class Login_method
 */
@WebServlet("/Login_method")
public class Login_method extends HttpServlet {
	public static final long serialVersionUID = 1L;
	protected Connection conn = null;


       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login_method() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		boolean login;
		HttpSession session = request.getSession(false);
		
        response.setContentType("text/html; charset=Shift_JIS");
        PrintWriter out = response.getWriter();

        try {
    						Class.forName("org.mariadb.jdbc.Driver");
     					   Connection conn = DriverManager.getConnection
   					    	    ("jdbc:mysql://localhost/Users", "root", "KCSF");
     				        String sql= "SELECT * FROM usertable WHERE user = ? && pass = ?";
     				        PreparedStatement val = conn.prepareStatement(sql);
     				        val.setString(1,id);
     				        val.setString(2,pass);
     				        ResultSet rs = val.executeQuery();
     				        
     				        if(rs.next()) {
     				        			login = true;
     				        					}else {
     				        							login = false;
     				        							
     				        					}
     				        		if(login) {
     				        			session.setAttribute("logined", "OK");
     				        			session.setAttribute("id", id);
     				        			session = request.getSession(true);
     				        			
     				        			
     				       	     String sql2= "SELECT * FROM greattrial WHERE user = ?";
     				   	        PreparedStatement val2 = conn.prepareStatement(sql2);
     				   	        val2.setString(1,id);
     				   	        ResultSet rs2 = val2.executeQuery();
     				   	        
     				        			if(rs2.next()) {
     				        		
     				        			}else {
     				        				
 				        					String sql1= "insert into greattrial (user,defcon) values(?,?)";
 	     		     				        PreparedStatement val1 = conn.prepareStatement(sql1);
 	     		     				        val1.setString(1,id);
 	     		     				        val1.setInt(2,0);
 	     		     				        ResultSet rs1 = val1.executeQuery();
     				        			}
     				        			
     				        			
     				        			
     				        			
     				        			
     				        			

     				        			
     				        			
     				        			RequestDispatcher dispatcher =  request.getRequestDispatcher("MainPage.jsp");
     				        			dispatcher.forward(request, response);
     				        	        
     				        		}else{
     				        			RequestDispatcher dispatcher =  request.getRequestDispatcher("Error.jsp");
     				        			dispatcher.forward(request, response);
     				        	       
     				        							}
     				        
     				        

        }catch (ClassNotFoundException e){
            log("ClassNotFoundException:" + e.getMessage());
        }catch (SQLException e){
            log("SQLException:" + e.getMessage());
        }catch (Exception e){
            log("Exception:" + e.getMessage());
        			}
        
        
        
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	//}

}
