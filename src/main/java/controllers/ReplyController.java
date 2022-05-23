package controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.ReplyDAO;


@WebServlet("*.reply")
public class ReplyController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");//한글 안깨지게
		request.setCharacterEncoding("UTF-8");// post 방식 한글 안깨지게

		String uri = request.getRequestURI();
		ReplyDAO dao = ReplyDAO.getInstance();
		Gson g = new Gson();
		
		try {
			if(uri.equals("/delete.reply")){//댓글 삭제
				String reply_seq = request.getParameter("reply_seq");
				int result = dao.deleteByReplySeq(reply_seq);
				PrintWriter pw = response.getWriter();
				pw.append(g.toJson(result));

			}else if(uri.equals("/modify.reply")) {//댓글 수정
				String reply_seq = request.getParameter("reply_seq");
				String contents = request.getParameter("replyContentModify");
				int result = dao.modify(reply_seq, contents);
				PrintWriter pw = response.getWriter();
				pw.append(g.toJson(result));
				
			}
		}catch(Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.jsp");
			return;
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}