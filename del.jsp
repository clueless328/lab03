<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
  <head>
    <title>删除课程</title>
  </head>
  <body>
  <jsp:useBean id="db" class="course.dbCourse" scope="page"/>
	<%
	request.setCharacterEncoding("gb2312");
	String id=request.getParameter("id");
	int i=db.executeUpdate("delete from courseinfo where id="+id);
	if(i==1)
		{out.println("<script language='javaScript'> alert('删除成功，点击确定后自动跳到主页！');</script>");
		response.setHeader("refresh","1;url=index.jsp");
		}
		else{
		out.println("<script language='javaScript'> alert('删除失败，点击确定后自动跳到主页！');</script>");
		response.setHeader("refresh","1;url=del.jsp");
		}
     db.close();
	%>
  </body>
</html>
