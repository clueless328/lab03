<%@ page language="java"  contentType="text/html; charset=gb2312" import="java.sql.*"%>
<%@ page errorPage="error.jsp"%>
<html>
  <head>
    <title>�γ̹���ϵͳ</title>
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
    <center><p id="h1">�γ̹���ϵͳ</p></center>
    <hr>
	<center id="aa">��<a  href=add.jsp>���ӿγ���Ϣ</a>��</center><p>
	<table cellpadding=10 border=1> 
	<tr><td id='1'>�γ̺�</td><td id='2'>�γ���</td><td id='3'>ѧ��</td><td id='4'>�ڿν�ʦ</td><td id='5'>�ڿν���</td><td id='6'>����</td></tr>
	<jsp:useBean id="db" class="course.dbCourse" scope="page"/>
	<%
	String sql="select * from courseinfo";
	ResultSet rs=db.executeQuery(sql);
	while(rs.next())
	{
		int id=rs.getInt(1);
		out.println("<tr><td>"+rs.getInt(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getInt(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td><a href='del.jsp?id="+id+"'>ɾ��</a>&nbsp;<a href='edit.jsp?id="+id+"'>�޸�</a></td></tr>");
	}
	rs.close();
	db.close();
	%>
	</table>
  </body>
</html>
