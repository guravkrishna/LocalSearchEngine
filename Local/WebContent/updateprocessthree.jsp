<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%!String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/justdial";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String id=request.getParameter("id");
String fname=request.getParameter("fname");  
String lname=request.getParameter("lname");  
String title=request.getParameter("title");  
String contact=request.getParameter("phone"); 
/* float rat = Float.parseFloat(request.getParameter("rat"));  */
String email=request.getParameter("email"); 
/*  year=Integer.parseInt(request.getParameter("year")); */ 
String add=request.getParameter("add"); 
String btype=request.getParameter("btype"); 
System.out.println(btype);
String city=request.getParameter("city"); 
String category=request.getParameter("category"); 
String days="";
/* String[] day=request.getParameterValues("daynames"); 
for(int i=0; i<day.length; i++){
    days+=day[i]+" ";
} */
String open=request.getParameter("open"); 
String close=request.getParameter("close"); 
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
String sql="Update adminbusi set fname=?,lname=?,title=?,phone=?,email=? ,address=?,type=?,city=?,category=?,open=?,close=?,Content=?,link=?,linktwo=?,map=?where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,fname);
ps.setString(2,lname);
   ps.setString(3, title);
 ps.setString(4, contact);
 ps.setString(5, email);
 ps.setString(6, add);
 ps.setString(7, btype);
 ps.setString(8, city);
 ps.setString(9, category);
/*  ps.setNString(10, days); */
         ps.setString(10, open);
         ps.setString(11, close);
         ps.setString(12, desc);
         ps.setString(13, link);
         ps.setString(14, secondlink);
         ps.setString(15, map);



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

