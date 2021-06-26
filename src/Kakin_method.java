

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class Kakin_method
 */
@WebServlet("/Kakin_method")
public class Kakin_method extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Kakin_method() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
						String value = request.getParameter("value");
						String banknumber = request.getParameter("banknumber");
						HttpSession session = request.getSession(true);
						String user = (String)session.getAttribute("id");
				        response.setContentType("text/html; charset=Shift_JIS");
				        PrintWriter out = response.getWriter();
        try {
			Class.forName("org.mariadb.jdbc.Driver");
			   Connection conn = DriverManager.getConnection
		    	    ("jdbc:mysql://localhost/Users", "root", "KCSF");
		        String sql= "insert into kakin(user,banknumber,value)value(?,?,?)";
		        PreparedStatement val = conn.prepareStatement(sql);
		        val.setString(1,user);
		        val.setString(2,banknumber);
		        val.setString(3,value);
		        ResultSet rs = val.executeQuery();
		        
     			  RequestDispatcher dispatcher =  request.getRequestDispatcher("Kakin.jsp");
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
