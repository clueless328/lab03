<%@ page language="java" contentType="text/html; charset=gb2312" import="java.sql.*" errorPage="error.jsp"%>
<html>
  <head>
    <title>�޸����</title>
 </head>
  <body>
   <jsp:useBean id="db" class="course.dbCourse" scope="page"/>
  <%
  request.setCharacterEncoding("gb2312");
  String coursenum=request.getParameter("coursenum");
  String coursename=request.getParameter("coursename");  
  String coursecredit=request.getParameter("coursecredit");  
  String courseteacher=request.getParameter("courseteacher");
  String courseroom=request.getParameter("courseroom");
  String id=request.getParameter("id"); 
  String sql="update courseinfo set coursenum='"+coursenum+"',coursename='"+coursename+"',coursecredit='"+coursecredit+"',courseteacher='"+courseteacher+"',courseroom='"+courseroom+"' where id="+id;
  System.out.print(sql);
  int i=db.executeUpdate(sql);
	if(i==1)
	{out.println("<script language='javaScript'> alert('�޸ĳɹ������ȷ�����Զ�������ҳ��');</script>");
	response.setHeader("refresh","1;url=index.jsp");
	}
	else
	{
		out.println("<script language='javaScript'> alert('�޸�ʧ�ܣ����ȷ�����Զ�������ҳ��');</script>");
		response.setHeader("refresh","1;url=index.jsp");
	}
  db.close();
   %>
  </body>
</html>
