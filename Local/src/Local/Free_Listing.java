package Local;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Free_Listing
 */
//@WebServlet("/Free_Listing")
public class Free_Listing extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Free_Listing() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
			 response.setContentType("text/html;charset=UTF-8");
		           	
			 			String list=request.getParameter("list_name");
			 			String fname=request.getParameter("first_name");  
		        		String lname=request.getParameter("last_name");
		        		String phone=request.getParameter("list_phone"); 
		                String email=request.getParameter("email");
		                String city=request.getParameter("city");
		               
		                
				        DB_Connection obj_DB_Connection=new DB_Connection();
						Connection connection=obj_DB_Connection.get_connection();
						PreparedStatement ps=null;
		   	        // @SuppressWarnings("unused")
		   	         
		   	         String query = "INSERT into listing(title, fname, lname, phone, email, city) values (?,?,?,?,?,?)";
		   	         ps=connection.prepareStatement(query);
		   	        
		   	         ps.setString(1, list);
		   	         ps.setString(2, fname);
		   	         ps.setString(3, lname); 
		   	         ps.setString(4, phone);
		   	         ps.setString(5, email);
		   	         ps.setString(6, city);
		   	         
		   	   
		   	 
		           /* ps.executeUpdate();*/
		   	         
		   	     
		   	       
		   	   
		   	ps.execute();
		       request.getRequestDispatcher("User_free_Category.jsp").include(request, response);
			}catch(SQLException e){
		   				e.printStackTrace();
		   			} 
		}
	}

