<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DEFCON_LEVEL</title>
</head>
<body>

	    <%
	    
	
	    
				int defcon =0;
	    String id = (String)session.getAttribute("id");
	    
	    
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
	        
	
	     
		}catch(ClassNotFoundException e){
            log("ClassNotFoundException:" + e.getMessage());
        }catch (SQLException e){
            log("SQLException:" + e.getMessage());
        }catch (Exception e){
            log("Exception:" + e.getMessage());
        			}
	    
	    
	    
	    
	    
	    
	    
	    		defcon++;
	    

	    
	    try{
		Class.forName("org.mariadb.jdbc.Driver");
		   Connection conn = DriverManager.getConnection
	    	    ("jdbc:mysql://localhost/Users", "root", "KCSF");
	        String sql= "update greattrial set defcon= ? where user =?";
	        PreparedStatement val = conn.prepareStatement(sql);
	        val.setInt(1,defcon);
	        val.setString(2,id);
	        ResultSet rs = val.executeQuery();
	
	     
		}catch(ClassNotFoundException e){
            log("ClassNotFoundException:" + e.getMessage());
        }catch (SQLException e){
            log("SQLException:" + e.getMessage());
        }catch (Exception e){
            log("Exception:" + e.getMessage());
        			}
	  
	    
	    %><jsp:forward page="Gamecata.jsp" /><%
		%>


<script>
window.close()

</script>



</body>
</html>
