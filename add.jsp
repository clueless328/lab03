<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="error.jsp" %>
<html>
<head>
<title>��ӿγ���Ϣ</title>
</head>
<body>
<form action="add.jsp" method="post">
<table width="50%"  border="1" align="center">
<CAPTION>��ӿγ���Ϣ</CAPTION>
  <tr>
    <th width="30%">�γ̺ţ�</th>
    <td width="70%"><input name="coursenum" type="text"></td>
  </tr>
  <tr>
    <th>�γ�����</th>
    <td><input name="coursename" type="text"></td>
  </tr>
  <tr>
    <th>ѧ��</th>
    <td><input name="coursecredit" type="text"></td>
  </tr>
  <tr>
    <th>�ڿν�ʦ</th>
    <td><input name="courseteacher" type="text"></td>
  </tr>
  <tr>
    <th>�ڿν���</th>
    <td><input name="courseroom" type="text"></td>
  </tr>
  <tr>
    <th colspan="2">
    <input type="submit" name="submit" value="���">
    <input type="reset" value="����">
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
	out.println("<script language='javaScript'> alert('��ӳɹ�,���ȷ����ת����ҳ!');</script>");
	response.setHeader("refresh","1;url=index.jsp");
	}
	else{
	out.println("<script language='javaScript'> alert('���ʧ�ܣ����ȷ���������ҳ�棡');</script>");
	response.setHeader("refresh","1;url=add.jsp");
	}
	db.close();
}
%>
</body>
</html>
