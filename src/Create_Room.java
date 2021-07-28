

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
 * Servlet implementation class Create_Room
 */
@WebServlet("/Create_Room")
public class Create_Room extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Create_Room() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String roomid = request.getParameter("roomid");
		String roomname = request.getParameter("roomname");
        response.setContentType("text/html; charset=Shift_JIS");
        PrintWriter out = response.getWriter();
		
        try {
			Class.forName("org.mariadb.jdbc.Driver");
			   Connection conn = DriverManager.getConnection
		    	    ("jdbc:mysql://localhost/Users", "root", "KCSF");
			   HttpSession session = request.getSession(true);
			   

		        String sql= "insert into  room(roomid,roomname) values(?,?)";
		        PreparedStatement val = conn.prepareStatement(sql);
		        val.setString(1,roomid);
		        val.setString(2,roomname);
		        ResultSet rs = val.executeQuery();
		        session.setAttribute("roomid", roomid);
			      RequestDispatcher dispatcher =  request.getRequestDispatcher("Room.jsp");
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
