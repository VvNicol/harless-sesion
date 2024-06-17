package mipk;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


/**
 * Servlet implementation class LoginAuthenticator
 */
public class LoginAuthenticator extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String usuvalido = "admin";
	private String pwdvalida = "1357";
	private String usuvalido1 = "ET";
	private String pwdvalida1 = "5555";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginAuthenticator() {
        super();
       
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("./index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		beanDB db = new beanDB();
		HttpSession session = request.getSession();
		String usuario=request.getParameter("usuario");
		String pass=request.getParameter("pass");
		if (usuario == null) usuario="";
		if (pass == null) pass="";
		
		
		if(usuario.equals(usuvalido) && pass.equals(pwdvalida)) {
			session.setAttribute("attributo2",usuario);
			session.setAttribute("attributo1","1");
			response.sendRedirect("bienvenido.jsp");
			
		}else if(usuario.equals(usuvalido1) && pass.equals(pwdvalida1)) {
			session.setAttribute("attributo2",usuario);
			session.setAttribute("attributo1","1");
			response.sendRedirect("micasa.jsp");
		}else {
            response.sendRedirect("index.jsp");
        }
		

	}



}
