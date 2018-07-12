package Local;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ReviewDao {
	
	 public static List<Review> getAllRecords(){  
		    List<Review> list=new ArrayList<Review>();  
		      
		    try{  
		    	DB_Connection obj_DB_Connection=new DB_Connection();
		    	Connection connection=obj_DB_Connection.get_connection();  
		        PreparedStatement ps=connection.prepareStatement("select * from review");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            Review u=new Review();  
		            u.setId(rs.getInt("id"));
		            u.setFname(rs.getString("fname"));
		            u.setCategory(rs.getString("category"));  
		            u.setTitle(rs.getString("title"));  
		            u.setRating(rs.getString("rating"));  
		            u.setReview(rs.getString("review"));
		            list.add(u);
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return list;  
		}  
	 public static Review getRecordByFname(String fname){  
		    Review u=null;  
		    try{  
		    	DB_Connection obj_DB_Connection=new DB_Connection();
		    	Connection connection=obj_DB_Connection.get_connection();   
		        PreparedStatement ps=connection.prepareStatement("select * from review where fname=?");  
		        ps.setString(1,fname+"");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            u=new Review();  
		            u.setId(rs.getInt("id"));
		            u.setFname(rs.getString("fname"));  
		            u.setCategory(rs.getString("category"));  
		            u.setTitle(rs.getString("title"));  
		            u.setRating(rs.getString("rating"));  
		            u.setReview(rs.getString("review"));
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return u;  
		}  
}
