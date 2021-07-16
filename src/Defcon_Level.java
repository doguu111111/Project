

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class Defcon_Level
 */
@WebServlet("/Defcon_Level")
public class Defcon_Level extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Defcon_Level() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
					HttpSession session = request.getSession(true);
					String id = (String)session.getAttribute("id");
					
					int defcon = 0;
	    
	    
	    try{
		Class.forName("org.mariadb.jdbc.Driver");
		   Connection conn = DriverManager.getConnection
	    	    ("jdbc:mysql://localhost/Users", "root", "KCSF");
	        String sql= "SELECT * FROM greattrial WHERE user = ?";
	        PreparedStatement val = conn.prepareStatement(sql);
	        val.setString(1,id);
	        ResultSet rs = val.executeQuery();
				if(rs.next()){
							defcon = rs.getInt("defcon");
						}
				
				
				
				if(defcon==0) {
	     			  RequestDispatcher dispatcher =  request.getRequestDispatcher("Fighter0.jsp");
	          		dispatcher.forward(request, response);
				}
				
				if(defcon==1) {
	     			  RequestDispatcher dispatcher =  request.getRequestDispatcher("Fighter1.jsp");
	          		dispatcher.forward(request, response);
				}
				
				
	        
		}catch(ClassNotFoundException e){
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
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
