<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="error.jsp" %>
<html>
<head>
<title>添加课程信息</title>
</head>
<body>
<form action="add.jsp" method="post">
<table width="50%"  border="1" align="center">
<CAPTION>添加课程信息</CAPTION>
  <tr>
    <th width="30%">课程号：</th>
    <td width="70%"><input name="coursenum" type="text"></td>
  </tr>
  <tr>
    <th>课程名：</th>
    <td><input name="coursename" type="text"></td>
  </tr>
  <tr>
    <th>学分</th>
    <td><input name="coursecredit" type="text"></td>
  </tr>
  <tr>
    <th>授课教师</th>
    <td><input name="courseteacher" type="text"></td>
  </tr>
  <tr>
    <th>授课教室</th>
    <td><input name="courseroom" type="text"></td>
  </tr>
  <tr>
    <th colspan="2">
    <input type="submit" name="submit" value="添加">
    <input type="reset" value="重置">
    </th>
  </tr>
</table>
</form>
<jsp:useBean id="db" class="course.dbCourse" scope="page"/>
<%
request.setCharacterEncoding("gb2312");
String submit=request.getParameter("submit");
if(submit!=null&&!submit.equals(""))
{
	int flag=0;
	  String coursenum=request.getParameter("coursenum");
	  String coursename=request.getParameter("coursename");  
	  String coursecredit=request.getParameter("coursecredit");  
	  String courseteacher=request.getParameter("courseteacher");
	  String courseroom=request.getParameter("courseroom");
	  String s="select * from courseinfo";
	  ResultSet rs=db.executeQuery(s);
	  int id=(int)(Math.random()*1000);
		while(flag==0)
		{
			flag=1;
			id=(int)(Math.random()*1000);
			while(rs.next())
			{			 
		         if(rs.getInt(1)==id)
		         {
		        	 flag=0;
		        	 break;
		         }
			}
		}
	String sql="insert into courseinfo(id,coursenum,coursename,coursecredit,courseteacher,courseroom) values('"+id+"','"+coursenum+"','"+coursename+"','"+coursecredit+"','"+courseteacher+"','"+courseroom+"');";
	System.out.print(sql);
	int i=db.executeUpdate(sql);
	if(i==1)
	{
	out.println("<script language='javaScript'> alert('添加成功,点击确定跳转到主页!');</script>");
	response.setHeader("refresh","1;url=index.jsp");
	}
	else{
	out.println("<script language='javaScript'> alert('添加失败，点击确定返回添加页面！');</script>");
	response.setHeader("refresh","1;url=add.jsp");
	}
	db.close();
}
%>
</body>
</html>
