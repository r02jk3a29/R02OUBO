import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Page1Servlet
 */
@WebServlet("/kadai6")
public class kadai6 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public kadai6() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String sEname = request.getParameter("email");
		String sNumA = request.getParameter("numa");
		String sNumB = request.getParameter("numb");

			
			request.setAttribute("email", sEname);
			request.setAttribute("numa", sNumA);
			request.setAttribute("numb", sNumB);
			
	
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/JSP/kadai6.jsp");
			rd.forward(request, response);
			
		
	}

}
