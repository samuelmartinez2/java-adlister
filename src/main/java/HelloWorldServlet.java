import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.rmi.ServerException;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/")
public class HelloWorldServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException {
        String name= request.getParameter("name");
        if (name == null) {
            name = "world";
        }else if (name.equalsIgnoreCase("bgates")) {
            response.sendRedirect("https://microsoft.com");
            return;
        }
        request.setAttribute("name",name);
        request.getRequestDispatcher("/WEB-INF/hello-world.jsp").forward(request,response);
//        response.getWriter().println("<h1>Hello, World!</h1>");
    }
}
