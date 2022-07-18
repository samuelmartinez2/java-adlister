import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.rmi.ServerException;

@WebServlet(name = "GuessGameServlet", urlPatterns = "/guess")
public class GuessGameServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/guess.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String guess = req.getParameter("guess");
        String randomNumber = String.valueOf((int) Math.floor(Math.random() * 3) + 1);
        if (guess.equals(randomNumber)) {
            resp.sendRedirect("/correct");
        } else {
            resp.sendRedirect("/incorrect");
        }
    }
}
