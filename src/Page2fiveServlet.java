

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
@WebServlet("/page2five")
public class Page2fiveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Page2fiveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sEname = request.getParameter("email");
		String sNumA = request.getParameter("numa");
		String sNumB = request.getParameter("numb");
		
		String[] Array = new String[sNumA.length()];
		int sum = 0;
		for(int i=0;i<sNumA.length();i++) {
			Array[i]=String.valueOf(sNumA.charAt(i));
			sum=+Integer.parseInt(Array[i]);
		}
		if(sNumA.equals(sNumB)) {
			request.setAttribute("re2","”ŽšA‚Æ”ŽšB‚Íˆá‚¤’l‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢B");
			RequestDispatcher rd = request.getRequestDispatcher("/index");
			rd.forward(request, response);
		}
		else if(sum%9!=0) {
			request.setAttribute("re","”ŽšA‚ª‚½‚¾‚µ‚­‚ ‚è‚Ü‚¹‚ñB");
			RequestDispatcher rd = request.getRequestDispatcher("/index");
			rd.forward(request, response);
		}else{
			request.setAttribute("sEname",sEname);
			request.setAttribute("sNumA",sNumA);
			request.setAttribute("sNumB",sNumB);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/JSP/kadai6.jsp");
			rd.forward(request, response);
		}
	}

}
