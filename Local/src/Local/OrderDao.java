package Local;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class OrderDao {
	public static List<Order> getAllRecords(){  
	    List<Order> list=new ArrayList<Order>();  
	      
	    try{  
	    	DB_Connection obj_DB_Connection=new DB_Connection();
	    	Connection connection=obj_DB_Connection.get_connection();
	        PreparedStatement ps=connection.prepareStatement("select l.title,l.fname,l.phone,c.category,c.subcategory,p.startdate,p.expiredate from listing l join category c\r\n" + 
	        		"on l.id=c.id join package p on c.id=p.id;\r\n" + 
	        		"");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            Order u=new Order();  
	            u.setTitle(rs.getString("title"));  
	            u.setFname(rs.getString("fname"));  
	            u.setPhone(rs.getString("phone"));  
	            u.setCategory(rs.getString("category"));  
	            u.setSubcategory(rs.getString("subcategory"));
	            u.setStartdate(rs.getDate("startdate"));
	            u.setExpiredate(rs.getDate("expiredate"));
	            list.add(u);
	        }  
	    }
	    catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	 public static Order getRecordByName(String fname){  
		    Order u=null;  
		    try{  
		    	DB_Connection obj_DB_Connection=new DB_Connection();
		    	Connection connection=obj_DB_Connection.get_connection();  
		        PreparedStatement ps=connection.prepareStatement("select l.title,l.fname,l.phone,c.category,c.subcategory,p.startdate,p.expiredate from listing l join category c "+
		        		"on l.id=c.id join package p on c.id=p.id where l.fname=?");  
		        ps.setString(1,fname+"");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            u=new Order();  
		            u.setTitle(rs.getString("title"));  
		            u.setFname(rs.getString("fname"));  
		            u.setPhone(rs.getString("phone"));  
		            u.setCategory(rs.getString("category"));  
		            u.setSubcategory(rs.getString("subcategory"));
		            u.setStartdate(rs.getDate("startdate"));
		            u.setExpiredate(rs.getDate("expiredate"));
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return u;  
		}  
}
