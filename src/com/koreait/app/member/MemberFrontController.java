package com.koreait.app.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.koreait.action.ActionForward;

@WebServlet("*.me")
public class MemberFrontController extends HttpServlet{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward forward = null;
		System.out.println("MemberController: "+command);
		if(command.equals("/member/MemberJoinOk.me")) {
			try {
				forward = new MemberJoinOkAction().execute(request,response);
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("/member/MemberJoinOk 오류");
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('회원가입 실패 !')");
				out.println("</script>");
				out.close();
			}
		}else if(command.equals("/member/memberFindId.me")) {
				try {
					forward=new MemberFindIdAction().execute(request, response);
				}catch(Exception e) {
					System.out.println("/member/memberFindId 오류");
					System.out.println(e);
				}
			}
		else if(command.equals("/member/memberFindPw.me")) {
			try {
				forward=new MemberFindPwAction().execute(request, response);
			}catch(Exception e) {
				System.out.println("/member/memberFindPw 오류");
				System.out.println(e);
			}
		}
		 else if(command.equals("/member/MemberLogin.me")) {
			forward = new ActionForward();
			forward.setPath("/app/member/memberLogin.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/member/memberLoginOk.me")) {
			try {
				forward = new MemberLoginOkAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/member/MemberLoginOk 오류");
				System.out.println(e);
			}
		} else if(command.equals("/member/CheckId.me")) {
			try {
				forward = new CheckIdAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/member/CheckId 오류");
				/*System.out.println("오류: "+e);*/
				e.printStackTrace();
			}
		} else if(command.equals("/member/MemberLogout.me")){
			request.getSession().invalidate();
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath(request.getContextPath()+"/main.jsp");
		
		}else if(command.equals("/member/memberInfo.me")) {
			try {
				forward=new MemberInfoAction().execute(request, response);
			}catch(Exception e) {
				System.out.println("/member/memberInfo 오류");
				System.out.println(e);
			}
		} 
		/*else if(command.equals("/member/MemberModify.me")) { // 회원수정화면에 보여줄 정보 처리
           try {
			forward = new MemberModifyAction().execute(request, response);
		} catch (Exception e) {
			System.out.println("/member/MemberModify 오류");
			System.out.println(e);
		}
        } else if(command.equals("/member/MemberModifyOk.me")) { // 회원수정 처리
        	 try {
     			forward = new MemberModifyAction().execute(request, response);
     		} catch (Exception e) {
     			System.out.println("/member/MemberModify 오류");
     			System.out.println(e);
     		}
        }*/
        else if(command.equals("/member/memberModifyPw.me")) {
        	try {
        		forward=new MemberModifyPw().execute(request, response);
        	}catch(Exception e) {
        		System.out.println("/member/memberModifyPw 오류");
     			System.out.println(e);
        	}
        }else if(command.equals("/member/memberModifyEmail.me")) {
        	try {
        		forward = new MemberModifyEmailAction().execute(request, response);
        	}catch(Exception e) {
        		System.out.println("/member/memberModifyEmail 오류");
     			System.out.println(e);
        	}
        }else if(command.equals("/member/memberModifyPhone.me")) {
        	try {
        		forward = new MemberModifyPhoneAction().execute(request, response);
        	}catch(Exception e) {
        		System.out.println("/member/memberModifyEmail 오류");
     			System.out.println(e);
        	}
        }
        else if(command.equals("/member/memberLogout.me")) {
        	try {
        		forward = new MemberLogoutAction().execute(request, response);
        	}catch(Exception e) {
        		System.out.println("//member/memberLogout 오류");
     			System.out.println(e);
        	}
        } 
        else if(command.equals("/member/memberDelete.me")) {
        	try {
        		forward= new MemberDeleteAction().execute(request, response);
        	}catch(Exception e) {
        		System.out.println("/member/memberDelete 오류");
     			System.out.println(e);
        	}
        }
        else {
			forward = new ActionForward();
			forward.setPath("/app/error/404.jsp");
			forward.setRedirect(false);
			System.out.println("forward.getPath1 = " + forward.getPath());
			System.out.println("forward1 = " + forward);
		}
		
		if(forward!=null) {
			if(forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
				System.out.println("forward.getPath2 = " + forward.getPath());
				System.out.println("forward2 = " + forward);
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
				System.out.println("forward.getPath3 = " + forward.getPath());
				System.out.println("forward3 = " + forward);
			}
		}
	}
}







	
