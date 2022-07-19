import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.rmi.ServerException;



@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServerException, IOException{
            req.getRequestDispatcher("/login.jsp");
        }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServerException, IOException{

//        if (req.getMethod().equalsIgnoreCase("post")) {

            HttpSession session = req.getSession();
            String username = req.getParameter("username");
            String password = req.getParameter("password");
            if (username.equals("admin") && password.equals("password")) {
                session.setAttribute("username", username);
                resp.sendRedirect("/profile");
//            }
        }else{
                resp.sendRedirect("/login");
            }
    }
}
