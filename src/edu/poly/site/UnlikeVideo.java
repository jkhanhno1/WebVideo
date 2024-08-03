package edu.poly.site;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.poly.common.SessionUtils;
import edu.poly.dao.FavoriteDAO;
import edu.poly.model.Favorite;

/**
 * Servlet implementation class UnLikeServlet
 */
@WebServlet("/unlike")
public class UnlikeVideo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (!SessionUtils.isLogin(request)) {
			response.sendRedirect("/login");
			return;
		}

		String page = request.getParameter("page");
		String videoId = request.getParameter("videoId");
		if (videoId == null) {
			response.sendRedirect("/home");
			return;
		}

		String username = SessionUtils.getLoginedUsername(request);
		try {
			FavoriteDAO dao = new FavoriteDAO();
			Favorite favorite = dao.findOneByUserIdAndVideoId(username, videoId);
			dao.delete(favorite.getId());
			request.setAttribute("message", "Video is delete to Favorite!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		if (page == null) {
			page = "/home";
		}
		request.getRequestDispatcher(page).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}