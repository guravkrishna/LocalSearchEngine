<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.io.File" %>
<%@ page import="javax.servlet.ServletException"%>
<%@ page import="javax.servlet.annotation.MultipartConfig"%>
<%@ page import="javax.servlet.http.HttpServlet"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="javax.servlet.http.Part"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%!String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/justdial";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String id = request.getParameter("id");
		 String fname=request.getParameter("product_name");  
         
         String title=request.getParameter("product_title");  
        String contact=request.getParameter("list_phone"); 
        /* float rat = Float.parseFloat(request.getParameter("rat"));  */
         String email=request.getParameter("email"); 
       /*  year=Integer.parseInt(request.getParameter("year")); */ 
         String add=request.getParameter("list_addr"); 
        
         String city=request.getParameter("city_name"); 
         String category=request.getParameter("category_name"); 
        
         /*  String days="";
         String[] day=request.getParameterValues("daynames"); 
         for(int i=0; i<day.length; i++){
             days+=day[i]+" ";
         }  */
       String desc=request.getParameter("textaera1"); 
        
         
         if(id != null)
         {
         Connection con = null;
         PreparedStatement ps = null;
         int personID = Integer.parseInt(id);
         try
         {
         Class.forName(driverName);
         con = DriverManager.getConnection(url,user,psw);
         String sql="Update productlist set productname=?, producttilte=?, phone=?, email=?, address=?, productcategory=?, city=?, description=? where id="+id;
         ps = con.prepareStatement(sql);
         ps.setString(1,fname);
         ps.setString(2,title);
         ps.setString(3,contact);
         ps.setString(4,email);
         ps.setString(5, add);
         ps.setString(6,category);
         ps.setString(7, city);
		 ps.setString(8, desc);
         
        


         int i = ps.executeUpdate();
         if(i > 0)
         {
       out.print("Record Updated Successfully");
         }
         else
         {
       out.print("There is a problem in updating Record.");
         } 
         
         
        
         }catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		

	
         } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

%>