<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>

<%!String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/justdial";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String id = request.getParameter("id");
		 String fname=request.getParameter("fname");  
         
         String title=request.getParameter("title");  
        String contact=request.getParameter("phone"); 
        /* float rat = Float.parseFloat(request.getParameter("rat"));  */
         String email=request.getParameter("email"); 
       /*  year=Integer.parseInt(request.getParameter("year")); */ 
         String add=request.getParameter("add"); 
        
         String city=request.getParameter("city"); 
        
         /*  String days="";
         String[] day=request.getParameterValues("daynames"); 
         for(int i=0; i<day.length; i++){
             days+=day[i]+" ";
         }  */
       String desc=request.getParameter("desc"); 
         String link=request.getParameter("link"); 
         System.out.println(link);
         String secondlink=request.getParameter("secondlink"); 
         System.out.println(secondlink);
         String map=request.getParameter("map"); 
         System.out.println(map);
         
         if(id != null)
         {
         Connection con = null;
         PreparedStatement ps = null;
         int personID = Integer.parseInt(id);
         try
         {
         Class.forName(driverName);
         con = DriverManager.getConnection(url,user,psw);
         String sql="Update admincategory set name=?,title=?,phone=?,email=? ,address=?,city=?,Content=?,link=?,linktwo=?,map=?where id="+id;
         ps = con.prepareStatement(sql);
         ps.setString(1,fname);
         ps.setString(2,title);
         ps.setString(3,contact);
         ps.setString(4,email);
         ps.setString(5, add);
         ps.setString(6, city);
       /*   ps.setString(7,days);  */
         ps.setString(7, desc);
         ps.setString(8,link);
         ps.setString(9,secondlink);
         ps.setString(10,map);
        


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