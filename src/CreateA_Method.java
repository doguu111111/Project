
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

/**
 * Servlet implementation class CreateA_Method
 */
@WebServlet("/CreateA_Method")
public class CreateA_Method extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateA_Method() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		boolean success;
        response.setContentType("text/html; charset=Shift_JIS");
        PrintWriter out = response.getWriter();
		
		
        try {
			Class.forName("org.mariadb.jdbc.Driver");
			   Connection conn = DriverManager.getConnection
		    	    ("jdbc:mysql://localhost/Users", "root", "KCSF");
			      String sqlt= "SELECT * FROM usertable WHERE user = ? && pass = ?";
		        PreparedStatement val1 = conn.prepareStatement(sqlt);
		        val1.setString(1,id);
		        val1.setString(2,pass);
		        ResultSet rs1 = val1.executeQuery();
			        if(rs1.next()) {
			        	success = false;
		        					}else {
		        						success = true;
		        					}
			   
			   
			   
			        		if(success!=false) {
		        String sql= "insert into  usertable(user,pass,roll) values(?,?,1)";
		        PreparedStatement val = conn.prepareStatement(sql);
		        val.setString(1,id);
		        val.setString(2,pass);
		        ResultSet rs = val.executeQuery();
			      RequestDispatcher dispatcher =  request.getRequestDispatcher("Kanryou.jsp");
			      dispatcher.forward(request, response);
			        		}else{
			        			out.print("そのIDは使われています");
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
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
