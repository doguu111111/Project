<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SNS</title>
</head>
<style>
body{
  background: #fffff0;
  width: 1000px;
  padding: 10px;
  text-align: left;
  border: 10px solid #fffff0;

}
p{
  position: relative;
  padding: 5px 5px 5px 42px;
  background: #77c3df;
  font-size: 20px;
  color: white;
   margin: 30px auto;
  line-height: 1.3;
  z-index:-1;
  font-size:200%;
}

p:before {
  position: absolute;
  content: '';
  left: -2px;
  top: -2px;
  border: none;
  border-left: solid 40px white;
  border-bottom: solid 79px transparent;
  z-index:-2

}
.A{
  font-size:130%;
  width: 500px; /* ボックスの長さ */
  padding: 0.4em 0.5em;/*文字の上下 左右の余白*/
  color: #494949;/*文字色*/
  background: #f4f4f4;/*背景色*/
  border-left: solid 5px #7db4e6;/*左線*/
  border-bottom: solid 3px #d7d7d7;/*下線*/
}
</style>
<body>
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