<%@ page import="java.sql.*" pageEncoding="gb2312" errorPage="error.jsp"%>
<html>
  <head>
    <title>修改课程信息</title>
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
	<CAPTION>修改课程信息</CAPTION>
	  <tr>
	       <th width="30%">课程号：</th>
               <td width="70%">
               <input name="coursenum" type="text" value="<%=rs.getString(2)%>"></td>
          </tr>
	  <tr>
	    <th>课程名：</th>
	    <td><input name="coursename" type="text" value="<%=rs.getString(3)%>"></td>
	  </tr>
	  <tr>
	    <th>学分：</th>
	    <td><input name="coursecredit" type="text" value="<%=rs.getString(4)%>"></td>
	  </tr>
	  <tr>
	    <th>授课老师：</th>
	    <td><input name="courseteacher" type="text" value="<%=rs.getString(5)%>"></td>
	  </tr>
	  <tr>
	    <th>授课教室：</th>
	    <td><input name="courseroom" type="text" value="<%=rs.getString(6)%>"></td>
	  </tr>
	  <tr>
	    <th colspan="2">
	    <input type="hidden" name="id" value="<%=id%>">
	    <input type="submit" value="修改">
	    <input type="reset" value="重置">
	    </th>
	  </tr>
	</table>
</form>
<%
  db.close();
 %>
</body>
</html>
