<%@ page language="java"  contentType="text/html; charset=gb2312" import="java.sql.*"%>
<%@ page errorPage="error.jsp"%>
<html>
  <head>
    <title>课程管理系统</title>
     <style type="text/css">
     #aa{
     margin-top:10px;
     font-size:25px;
     }
   #h1{font-size:40px;
   margin-top:50px;
   }
   table
   {
   width:1000px;
   font-size:20px;
   margin-left:10%;
   margin-right:20%;
   }
   table td{
   width:250px;}
   a{
   text-decoration:none;
   color:black;
   }
   a:hover
   {
   background-color:black;
   color:white;
   }
   #1:hover
   {
     background-color:yellow;
     color:white;
   }
   #2:hover
   {
     background-color:yellow;
     color:white;
   }
   #3:hover
   {
     background-color:yellow;
     color:white;
   }
   #4:hover
   {
     background-color:yellow;
     color:white;
   }
   #5:hover
   {
     background-color:yellow;
     color:white;
   }
   #6:hover
   {
     background-color:yellow;
     color:white;
   }
  </style>
 </head>
  <body>
    <center><p id="h1">课程管理系统</p></center>
    <hr>
	<center id="aa">【<a  href=add.jsp>增加课程信息</a>】</center><p>
	<table cellpadding=10 border=1> 
	<tr><td id='1'>课程号</td><td id='2'>课程名</td><td id='3'>学分</td><td id='4'>授课教师</td><td id='5'>授课教室</td><td id='6'>管理</td></tr>
	<jsp:useBean id="db" class="course.dbCourse" scope="page"/>
	<%
	String sql="select * from courseinfo";
	ResultSet rs=db.executeQuery(sql);
	while(rs.next())
	{
		int id=rs.getInt(1);
		out.println("<tr><td>"+rs.getInt(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getInt(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td><a href='del.jsp?id="+id+"'>删除</a>&nbsp;<a href='edit.jsp?id="+id+"'>修改</a></td></tr>");
	}
	rs.close();
	db.close();
	%>
	</table>
  </body>
</html>
