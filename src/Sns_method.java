

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
 * Servlet implementation class Sns_method
 */
@WebServlet("/Sns_method")
public class Sns_method extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sns_method() {
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
		String mutter = request.getParameter("mutter");
		String id = (String)session.getAttribute("id");

		try {
			if(mutter==null) {
			     RequestDispatcher dispatcher =  request.getRequestDispatcher("SNS.jsp");
			     dispatcher.forward(request, response);
			}
		
		Class.forName("org.mariadb.jdbc.Driver");
		   Connection conn = DriverManager.getConnection
	    	    ("jdbc:mysql://localhost/Users", "root", "KCSF");
	        String sql= "insert into sns (user,mutter) values(?,?)";
	        PreparedStatement val = conn.prepareStatement(sql);
	        val.setString(1,id);
	        val.setString(2,mutter);
	        ResultSet rs = val.executeQuery();
		       mutter =null;
			     rs.close();
			     val.close();
 			       RequestDispatcher dispatcher =  request.getRequestDispatcher("SNS.jsp");
 			     dispatcher.forward(request, response);
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
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
