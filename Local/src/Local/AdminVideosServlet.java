package Local;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class AdminVideosServlet
 */

@MultipartConfig(fileSizeThreshold=1024*1024*1000, // 2MB
maxFileSize=1024*1024*1000,      
maxRequestSize=1024*1024*1000)
public class AdminVideosServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminVideosServlet() 
    {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html;charset=UTF-8");
	       
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet res=null;
		try
		{
			
			    PrintWriter pw = response.getWriter();
			        String savePath = "G:/Eclipse Projects/TGSLocalSearch/WebContent/images" + File.separator + Constants.SAVE_DIR2;
			            File fileSaveDir=new File(savePath);
			            if(!fileSaveDir.exists())
			            {
			                fileSaveDir.mkdir();
			            }
			            
				Part part1=request.getPart("vid1");
		        String fileName1=extractFileName(part1);
		        System.out.println(fileName1);
		        part1.write(savePath + File.separator + fileName1);
		        
		        Part part2=request.getPart("vid2");
		        String fileName2=extractFileName(part2);
		        System.out.println(fileName2);
		        part2.write(savePath + File.separator + fileName2);
		        
		        Part part3=request.getPart("vid3");
		        String fileName3=extractFileName(part3);
		        System.out.println(fileName3);
		        part3.write(savePath + File.separator + fileName3);
		        
		        Part part4=request.getPart("vid4");
		        String fileName4=extractFileName(part4);
		        System.out.println(fileName4);
		        part4.write(savePath + File.separator + fileName4);
		        
		        Part part5=request.getPart("vid5");
		        String fileName5=extractFileName(part5);
		        System.out.println(fileName5);
		        part5.write(savePath + File.separator + fileName5);
		        
		        con = JDBCHelper.getConnection();
		        ps=con.prepareStatement("insert into adminvideos (video1,video2,video3,video4,video5) values(?,?,?,?,?)");
		     
	            String filePath1= fileName1 ;
	            ps.setString(1,filePath1);
	            
	            String filePath2= fileName2 ;
	            ps.setString(2,filePath2);
	            
	            String filePath3= fileName3 ;
	            ps.setString(3,filePath3);
	            
	            String filePath4= fileName4 ;
	            ps.setString(4,filePath4);
	            
	            String filePath5= fileName5 ;
	            ps.setString(5,filePath5);
	            
	            int i=ps.executeUpdate();
	            if(i>0)
	            {
	            	pw.write("<html><body><h1>Videos Added Successfully</h1></body></html>");
	            	//request.getRequestDispatcher("Admin-Video.html").include(request, response);
	            }
	            else
	            {
	            	pw.write("<html><body><h1>Videos Adding failed</h1></body></html>");	
	            }
		        
		}
		catch(SQLException e)
		{
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		finally
		{
			JDBCHelper.close(res);
			JDBCHelper.close(ps);
			JDBCHelper.close(con);
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
