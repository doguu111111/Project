<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page 


import="java.sql.*"
import= "java.io.IOException"
import= "java.io.PrintWriter"

import= "javax.servlet.RequestDispatcher"
import= "javax.servlet.ServletException"
import= "javax.servlet.annotation.WebServlet"
import= "javax.servlet.*"
import= "javax.servlet.http.*"



%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>チャットルーム選択画面</title>
<style>
 p{
	 font-size :20pt;
 }
</style>
</head>
<body>



<form method="get" action="Create_Room.jsp">

	<button type="submit">ルーム作成</button>
</form>




	    <%
	    
	    

	    


	    
	    
	    try{
		Class.forName("org.mariadb.jdbc.Driver");
		   Connection conn = DriverManager.getConnection
	    	    ("jdbc:mysql://localhost/Users", "root", "KCSF");
	        String sql= "SELECT * FROM room order by roomid desc";
	        PreparedStatement val = conn.prepareStatement(sql);
	        ResultSet rs = val.executeQuery();
	        out.println("<p>チャットルームを選択してください</p>");

		while(rs.next()){
			String roomid = rs.getString("roomid");
			String roomname = rs.getString("roomname");
			roomid=new String(roomid.getBytes("8859_1"),"Shift_JIS");
			roomname=new String(roomname.getBytes("8859_1"),"Shift_JIS");
			
			out.println("<p>");
			out.print("ルーム" + roomid +":" + roomname);
			out.print("<form method='get' action='Select_Room'>");

			
			//out.print("<input type='submit' name ='roomid'  value="+roomid+">入室</button>");
			
			out.print("<input type='submit' name ='roomid'  value="+roomid+">入室</button>");
			
			out.print("</form>");
			out.println("</p>");
		}
		  rs.close();
		  val.close();
		}catch(ClassNotFoundException e){
            log("ClassNotFoundException:" + e.getMessage());
        }catch (SQLException e){
            log("SQLException:" + e.getMessage());
        }catch (Exception e){
            log("Exception:" + e.getMessage());
        			}
		%>

				




</body>
</html>