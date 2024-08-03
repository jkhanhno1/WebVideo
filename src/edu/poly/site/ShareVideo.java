package edu.poly.site;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import edu.poly.common.EmailUtils;
import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.common.SessionUtils;
import edu.poly.dao.ShareDAO;
import edu.poly.domain.Email;
import edu.poly.model.Share;
import edu.poly.model.User;
import edu.poly.model.Video;

/**
 * Servlet implementation class ShareVideoServlet
 */
@WebServlet("/sharevideo")
public class ShareVideo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (!SessionUtils.isLogin(request)) {
			response.sendRedirect("login");
			return;
		}
		String videoId = request.getParameter("videoId");
		if (videoId == null) {
			response.sendRedirect("/home");
			return;
		}
		request.setAttribute("videoId", videoId);
		PageInfo.prepareAndForwardSite(request, response, PageType.SITE_SHARE_PAGE);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			ShareDAO dao = new ShareDAO();
			Share share = new Share();
			Video video = new Video();
			User user = new User();
			String username = SessionUtils.getLoginedUsername(request);
			String emailForm = "khanhconngoan@gmail.com";
			String passFrom = "bdve lfjm qsdm wumu";
			String emailAddress = request.getParameter("email");
			String videoId = request.getParameter("videoId");
			request.setAttribute("videoId", videoId);
			if (videoId == null) {
				request.setAttribute("error", "Video Id is null");
			} else {
				Email email = new Email();
				email.setFrom(emailForm);
				email.setFromPassword(passFrom);
				email.setTo(emailAddress);
				email.setSubject("Chia sẻ video đến bạn | JKPHIMCU");
				String url = "http://localhost:8080/WebVideo/detail?videoId=" + videoId;
				String button = "background-color:#783ecf;color:#fff;font-size:15px;padding:12px 10px;text-decoration:none;border-radius:3px;font-weight:bold";
				String msg = "<div style='width:50%;margin:0 auto'>"
						+ "<div style='background-color:#f0f8ff;font-size:14px;padding:2em 5em'>"
						+ "<img src='https://i.imgur.com/VtXfSgp.png' referrerpolicy='no-referrer'>"
						+ "<div style='display:flex;border:1px;height:1px;background:lightblue'></div><p>Chào <b>bạn yêu</b>,</p>"
						+ "<p>Bạn <b>" + username + "</b> có một video thú vị và tôi muốn chia sẻ với bạn. Bạn có thể xem ngay bằng cách nhấp vào liên kết bên dưới:</p>"
						+ "<p style='display:grid;margin:0 auto;text-align:center'><a href=\"" + url + "\" style='" + button + "'>Xem video này</a></p>"
						+ "<div style='display:flex;border:1px;height:1px;background:lightblue'></div>"
						+ "<div style='margin-top:1em'>"
						+ "<p>CS1 FPTPOLYTECHNIC Đà Nẵng, 137 Nguyễn Thị Thập</p>"
						+ "Copyright © 2022 <b>JkhanhDEV</b>. All rights reserved.</div></div></div>";
				email.setContent(msg);
				EmailUtils.send(email);
				BeanUtils.populate(share, request.getParameterMap());
				share.setSharedate(new Date());
				share.setEmails(emailAddress);
				user.setUsername(username);
				share.setUser(user);
				video.setId(videoId);
				share.setVideo(video);
				dao.insert(share);
				request.setAttribute("message", "Video link has been sent!");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
		PageInfo.prepareAndForwardSite(request, response, PageType.SITE_SHARE_PAGE);
	}

}
