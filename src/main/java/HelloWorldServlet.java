import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello-world")
public class HelloWorldServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.getWriter().println("<h1>Hello, World!</h1>");
        String a = request.getParameter("uname");
        response.getWriter().println("<h1>Hello, World!</h1>" + a);

    }


        protected void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {
            String a = request.getParameter("uname");
            response.getWriter().println("<h1>Hello, World!</h1>" + a);
        }
    }
