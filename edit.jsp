<%@ page import="java.sql.*" pageEncoding="gb2312" errorPage="error.jsp"%>
<html>
  <head>
    <title>�޸Ŀγ���Ϣ</title>
 </head>
  <body>
<jsp:useBean id="db" class="course.dbCourse" scope="page"/>
  <%
  request.setCharacterEncoding("gb2312");
  String id=request.getParameter("id");
  ResultSet rs=db.executeQuery("select * from courseinfo where id="+id);
  rs.next();
   %>
   <form action="update.jsp" method="post">
   <table width="50%" border="1" align="center">
	<CAPTION>�޸Ŀγ���Ϣ</CAPTION>
	  <tr>
	       <th width="30%">�γ̺ţ�</th>
               <td width="70%">
               <input name="coursenum" type="text" value="<%=rs.getString(2)%>"></td>
          </tr>
	  <tr>
	    <th>�γ�����</th>
	    <td><input name="coursename" type="text" value="<%=rs.getString(3)%>"></td>
	  </tr>
	  <tr>
	    <th>ѧ�֣�</th>
	    <td><input name="coursecredit" type="text" value="<%=rs.getString(4)%>"></td>
	  </tr>
	  <tr>
	    <th>�ڿ���ʦ��</th>
	    <td><input name="courseteacher" type="text" value="<%=rs.getString(5)%>"></td>
	  </tr>
	  <tr>
	    <th>�ڿν��ң�</th>
	    <td><input name="courseroom" type="text" value="<%=rs.getString(6)%>"></td>
	  </tr>
	  <tr>
	    <th colspan="2">
	    <input type="hidden" name="id" value="<%=id%>">
	    <input type="submit" value="�޸�">
	    <input type="reset" value="����">
	    </th>
	  </tr>
	</table>
</form>
<%
  db.close();
 %>
</body>
</html>
