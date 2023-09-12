<%@ page import="java.sql.*" %>
<%
   String driver = "com.mysql.jdbc.Driver";
   String url = "jdbc:mysql://localhost/student";
   String username = "root";
   String password = "password";
   Connection conn = null;
   Statement stmt = null;
   ResultSet rs = null;
   try {
      Class.forName(driver);
      conn = DriverManager.getConnection(url, username, password);
      
      stmt = conn.createStatement();
      String sql = "SELECT * FROM studentdetailss";
      rs = stmt.executeQuery(sql);
      
      out.println("<table>");
      out.println("<tr><th>AD.No</th><th>FIRST NAME</th><th>EMAIL</th><th>ROLL NO</th><th>DEPT</th><th>YEAR</th><th>GENDER</th><th>MOBILE</th><th>DOB</th><th>AGE</th><th>CITY</th><th>CERTIFICATION</th><th>MATHS</th><th>PHYSICS</th><th>CHEMISTRY</th><th>DOMAIN</th></tr>");
      while(rs.next()) {
         out.println("<tr>");
         out.println("<td>" + rs.getInt("fname") + "</td>");
         out.println("<td>" + rs.getString("lname") + "</td>");
         out.println("<td>" + rs.getString("email") + "</td>");
         out.println("<td>" + rs.getInt("rollno") + "</td>");
         out.println("<td>" + rs.getString("dept") + "</td>");
         out.println("<td>" + rs.getString("year") + "</td>");
         out.println("<td>" + rs.getString("gender") + "</td>");
         out.println("<td>" + rs.getInt("mobile") + "</td>");
         out.println("<td>" + rs.getString("dob") + "</td>");
         out.println("<td>" + rs.getInt("age") + "</td>");
         out.println("<td>" + rs.getString("city") + "</td>");

         out.println("<td>" + rs.getString("certification") + "</td>");

         out.println("<td>" + rs.getInt("maths") + "</td>");
         out.println("<td>" + rs.getInt("physics") + "</td>");
         out.println("<td>" + rs.getInt("chemistry") + "</td>");
         out.println("<td>" + rs.getString("college") + "</td>");

         out.println("</tr>");
      }
      out.println("</table>");
   } catch(Exception e) {
      e.printStackTrace();
   } finally {
      try {
         if(rs!=null) rs.close();
         if(stmt!=null) stmt.close();
         if(conn!=null) conn.close();
      } catch(Exception e) {
         e.printStackTrace();
      }
   }
%>


