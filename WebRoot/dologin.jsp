<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
 request.setCharacterEncoding("utf-8");
   String username=request.getParameter("username");
   String password=request.getParameter("password");
  session.setAttribute("loginname", username);
  application.setAttribute("loginname1", username);
   if("admin".equals(username)&&"admin".equals(password))
   {
               
              request.getRequestDispatcher("login_success.jsp").forward(request, response);
   }else{
            response.sendRedirect("login_failed.jsp");
   }
%>