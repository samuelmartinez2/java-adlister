import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.rmi.ServerException;
import java.util.List;

@WebServlet(name = "ShowAds", urlPatterns = "/ads")
public class ShowAds extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServerException, IOException, ServletException {
        Ads ListAdsDao = DaoFactory.getAdsDao();
        List<Ad> ads= ListAdsDao.all();
        req.setAttribute("ads", ads);
        req.getRequestDispatcher("/ads/index.jsp").forward(req,resp);
    }
}
