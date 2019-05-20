package scs;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginSer
 */
@WebServlet("/LoginSer")
public class LoginSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginSer() {
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
		PrintWriter out = response.getWriter();
		String uname = request.getParameter("txtuser");
		String pass = request.getParameter("txtpass");
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java7", "root", "");
		Statement st = con.createStatement();
		ResultSet res = st.executeQuery("select * from Register where username='"+uname+"' and pass='"+pass+"'");
		if(res.next())
		{
			if(request.getParameter("chk1")!=null)
			{
				
			
			Cookie user = new Cookie("user",uname);
			user.setMaxAge(120000);
			response.addCookie(user);
			
			Cookie pass1 = new Cookie("pass",pass);
			pass1.setMaxAge(120000);
			response.addCookie(pass1);
			}
			
		    HttpSession session= request.getSession();
		    session.setAttribute("uid",uname);
			response.sendRedirect("ViewReg.jsp");
		}
		else
			out.print("invalid userid and password");
		}
		catch(Exception ex)
		{
			out.print(ex.getMessage());
		}
		}

}
