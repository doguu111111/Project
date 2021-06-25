<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
    <%
    String logined = (String)session.getAttribute("logined");
    String id = (String)session.getAttribute("id");
	if(logined==null){
		%><jsp:forward page="Login.jsp" /><%
	}
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SNS</title>
</head>
<body>
	<form method="get" action="Sns_method">
			つぶやき内容  <input type="text" name="mutter"><br>
	<button type="submit">つぶやく</button>
	</form>
	    <%
	    try{
		Class.forName("org.mariadb.jdbc.Driver");
		   Connection conn = DriverManager.getConnection
	    	    ("jdbc:mysql://localhost/Users", "root", "KCSF");
	        String sql= "SELECT * FROM sns order by id desc";
	        PreparedStatement val = conn.prepareStatement(sql);
	        ResultSet rs = val.executeQuery();
	    
		while(rs.next()){
			String user = rs.getString("user");
			String mutter = rs.getString("mutter");
			out.println("<p>");
			out.print("ユーザー" + user +":" + mutter);
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