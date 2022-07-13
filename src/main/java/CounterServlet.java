import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;

@WebServlet(name = "CounterServlet", urlPatterns = "/count")
public class CounterServlet extends HttpServlet {

    private int count;

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServerException, IOException {
        String reset = req.getParameter("reset");

        if (reset == null) {
            count ++;
        }else {
            count = 0;
            res.sendRedirect("/count");
        }
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        out.println("<h> The page count is " + count);
    }
}
