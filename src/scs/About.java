package scs;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class About
 */
@WebServlet("/About")
public class About extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public About() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out =response.getWriter();
		out.print("<html>");
		out.print("<head>");
		out.print("<title>welcome in JAVA</title>");
		out.print("<style type='text/css'>*{margin:0px;} header,footer{height:100px; background-color:cyan} section{height:500px; background-color:gray;}</style>");
		out.print("<head>");
		out.print("<body>");
		out.print("<header>");
		out.print("<a href='Home'>Home</a> "+"<a href='About'>About</a> "+"<a href='Contact'>Contact us</a>");
		out.print("</header>");
		out.print("<section>");
		out.print("</h1>welcome in About us page</h1>");
		out.print("</section>");
		out.print("<footer>");
		out.print("</footer>");
		
		out.print("</body>");
		
		out.print("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
