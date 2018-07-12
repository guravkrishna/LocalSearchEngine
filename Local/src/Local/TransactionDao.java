package Local;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TransactionDao {
	 public static List<Transaction> getAllRecords(){  
		    List<Transaction> list=new ArrayList<Transaction>();  
		      
		    try{  
		    	DB_Connection obj_DB_Connection=new DB_Connection();
		    	Connection connection=obj_DB_Connection.get_connection();
		        PreparedStatement ps=connection.prepareStatement("select * from package");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            Transaction u=new Transaction();  
		            u.setId(rs.getInt("id"));  
		            u.setType(rs.getString("type"));
		            u.setStartdate(rs.getDate("startdate"));
		            u.setExpiredate(rs.getDate("expiredate"));
		            u.setTransaction(rs.getString("transaction"));  
		            u.setAmount(rs.getString("amount"));  
		            u.setStatus(rs.getString("status"));  
		            list.add(u);
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return list;  
		}  
	 public static Transaction getRecordByType(String type){  
		    Transaction u=null;  
		    try{  
		    	DB_Connection obj_DB_Connection=new DB_Connection();
		    	Connection connection=obj_DB_Connection.get_connection();  
		        PreparedStatement ps=connection.prepareStatement("select * from package where type=?");  
		        ps.setString(1,type+"");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            u=new Transaction();  
		            u.setId(rs.getInt("id"));  
		            u.setType(rs.getString("type"));
		            u.setStartdate(rs.getDate("startdate"));
		            u.setExpiredate(rs.getDate("expiredate"));
		            u.setTransaction(rs.getString("transaction"));  
		            u.setAmount(rs.getString("amount"));  
		            u.setStatus(rs.getString("status"));  
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return u;  
		}  
}
