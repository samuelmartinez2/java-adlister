import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.rmi.ServerException;

@WebServlet(name = "IncorrectServlets", urlPatterns = "/incorrect")
public class IncorrectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServerException, IOException, ServletException {
        req.setAttribute("message", "Tough luck... no dice... you lose...");
        req.setAttribute("title", "Bummer, dude");
        req.getRequestDispatcher("/WEB-INF/result.jsp").forward(req, resp);
    }

}
