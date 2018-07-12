package Local;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class User_Free_Category_Listing
 */
//@WebServlet("/User_Free_Category_Listing")
@MultipartConfig(fileSizeThreshold=1024*1024*1000, // 2MB
maxFileSize=1024*1024*1000,      
maxRequestSize=1024*1024*1000)
public class User_Free_Category_Listing extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR="NewUpload";
	   
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public User_Free_Category_Listing() {
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
		       
			    PrintWriter out = response.getWriter();
			        String savePath = "C:/Users/user/git/Local/WebContent" + File.separator + SAVE_DIR;
			            File fileSaveDir=new File(savePath);
			            if(!fileSaveDir.exists()){
			                fileSaveDir.mkdir();
			            }
			            int year;
			            
			            String category=request.getParameter("category");  
		        		String bname=request.getParameter("business_name");
		                String subname=request.getParameter("sub_business"); 
		                String email=request.getParameter("email");
		                String address=request.getParameter("list_addr");
		                String days="";
		                String[] day=request.getParameterValues("daynames"); 
		                for(int i=0; i<day.length; i++){
		                    days+=day[i]+" ";
		                }
		                /*String day=request.getParameter("daynames");*/
		                String opentime=request.getParameter("open");
		                String closetime=request.getParameter("close");
		                String packagename=request.getParameter("btype");
		                String listdec=request.getParameter("description");
		                year=Integer.parseInt(request.getParameter("year"));
		                String website=request.getParameter("weblink");
		                String facelink=request.getParameter("facelink");
		                String googlelink=request.getParameter("googlelink");
		                String map=request.getParameter("map");
		                
				        Part part=request.getPart("cimg");
				        String fileName=extractFileName(part);
				        System.out.println(fileName);
				        part.write(savePath + File.separator + fileName);
				        
				        Part part1=request.getPart("limg");
				        String fileName1=extractFileName(part1);
				        System.out.println(fileName1);
				        part1.write(savePath + File.separator + fileName1);
				      
				        
				        Part part2=request.getPart("fgal");
				        String fileName2=extractFileName(part2);
				        System.out.println(fileName2);
				        part2.write(savePath + File.separator + fileName2);
				        
				        Part part3=request.getPart("sgal");
				        String fileName3=extractFileName(part3);
				        System.out.println(fileName3);
				        part3.write(savePath + File.separator + fileName3);
				        
				        Part part4=request.getPart("tgal");
				        String fileName4=extractFileName(part4);
				        System.out.println(fileName4);
				        part4.write(savePath + File.separator + fileName4);
				        
				        Part part5=request.getPart("vid1");
				        String fileName5=extractFileName(part5);
				        System.out.println(fileName5);
				        part5.write(savePath + File.separator + fileName5);
				        
		                
				        DB_Connection obj_DB_Connection=new DB_Connection();
						Connection connection=obj_DB_Connection.get_connection();
						PreparedStatement ps=null;
						
		   	        // @SuppressWarnings("unused")
		   	         
		   	         String query = "INSERT into category(category, title, subcategory, email, address, day, open, close, package, content, linkone, linktwo, linkthree, map, coverimg, logo, img, bimg, gimg, video) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		   	         ps=connection.prepareStatement(query);
		   	        
		   	         ps.setString(1, category);
		   	         ps.setString(2, bname);
		   	         ps.setString(3, subname);
		   	         ps.setString(4, email);
		   	         ps.setString(5, address);
		   	         ps.setString(6, days);
		   	         ps.setString(7, opentime);
		   	         ps.setString(8, closetime);
		   	         ps.setString(9, packagename);
		   	         ps.setString(10, listdec);
		   	         ps.setLong(11, year);
		   	         ps.setString(12, website);
		   	         ps.setString(13, facelink);
		   	         ps.setString(14, googlelink);
		   	         ps.setString(15, map);
		   	         
		   	         String filePath= fileName ;
		   	         ps.setString(16,filePath);
		   	         
		   	         String filePath1= fileName1 ;
		   	         ps.setString(17,filePath1);
		        
		   	         String filePath2= fileName2 ;
		   	         ps.setString(18,filePath2);
		   	         
		   	         String filePath3= fileName3 ;
		   	         ps.setString(19,filePath3);
		   	         
		   	         String filePath4= fileName4 ;
		   	         ps.setString(20,filePath4);
		        
		   	         String filePath5= fileName5 ;
		   	         ps.setString(21,filePath5);
		 
		   	   
		   	 
		           /* ps.executeUpdate();*/
		   	         
		   	     
		   	       
		   	   
		   	ps.execute();
		       request.getRequestDispatcher("main.jsp").include(request, response);
			}catch(SQLException e){
		   				e.printStackTrace();
		   			} 
		}
			private String extractFileName(Part part) {
			    String contentDisp = part.getHeader("content-disposition");
			    String[] items = contentDisp.split(";");
			    for (String s : items) {
			        if (s.trim().startsWith("filename")) {
			            return s.substring(s.indexOf("=") + 2, s.length()-1);
			        }
			    }
			    return "";
		   		
		
		
		}
	}
