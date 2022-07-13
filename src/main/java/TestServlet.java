import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.html.HTML;
import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;


@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")

public class TestServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServerException, IOException {
        String name = req.getParameter("name");
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        if ( name != null){
        out.println("<h1>Hello " + name + "</h1>");
        }
        else {
            out.println("<h1>Hello world! </h1>");
        };
//        res.sendRedirect("/hello");
    }
}

