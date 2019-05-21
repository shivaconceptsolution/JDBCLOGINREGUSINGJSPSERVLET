package controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Register;
import java.sql.*;

/**
 * Servlet implementation class Welcome
 */
@WebServlet("/Welcome")
public class Welcome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Welcome() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("views/index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		Register obj = new Register();
		obj.setMobile(request.getParameter("txtmobile"));
		obj.setPass(request.getParameter("txtpass"));
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/abc","root" ,"");
			Statement st = con.createStatement();
			int x = st.executeUpdate("insert into reg(mobile,pass) values('"+obj.getMobile()+"','"+obj.getPass()+"')");
			if(x!=0)
			{
				out.println("Data inserted successfully");
			}
			else
			{
				out.println("Data not inserted successfully");
			}
		}
		catch(Exception ex)
		{
			
		}
		out.print(obj.getMobile());
	}

}
