import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;

@WebServlet(name = "PizzaOrderForm", urlPatterns = "/")
public class PizzaOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException, ServletException {
        request.getRequestDispatcher("WEB-INF/pizza-order.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServerException,IOException{

        String[] order = request.getParameterValues("toppings");
        for (String str:order) {
            response.getWriter().println(str);
            System.out.println(str);
        }
        String[] crust = request.getParameterValues("cheese");
        for (String cru:crust) {
            response.getWriter().println(cru+" cheese");
            System.out.println(cru);
        }
        String a = request.getParameter("name");
        response.getWriter().println(a);
        request.setAttribute("name", a);

        System.out.println("the address is" + a);
//        response.getWriter().println(Arrays.toString(order));
//        System.out.println(Arrays.toString(order));





//        String crust= request.getParameter("crust");
//        String chesse= request.getParameter("chesse");
//        String sauce= request.getParameter("sauce");
//        String address = request.getParameter("address");
//        String[] toppings = request.getHeader("toppings");
//
//        PrintWriter out = response.getWriter();
//        out.println(crust);

    }
}
