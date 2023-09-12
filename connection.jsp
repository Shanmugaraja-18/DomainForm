<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String rollno=request.getParameter("rollno");

String dept=request.getParameter("dept");
String year=request.getParameter("year");
String gender = request.getParameter("gender");
String mobile=request.getParameter("mobile");
String dob = request.getParameter("dob");

String age = request.getParameter("age");
String city = request.getParameter("city");
String certification = request.getParameter("certification");

String maths = request.getParameter("maths");
String physics = request.getParameter("physics");
String chemistry = request.getParameter("chemistry");
String college = request.getParameter("college");


try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root", "password");
    PreparedStatement ps = connect.prepareStatement("insert into studentdetailss(fname, lname, email,rollno,dept,year, gender,mobile, dob,age,city,certification,maths,physics,chemistry,college) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);");
    

    ps.setString(1,fname);
    ps.setString(2,lname);
    ps.setString(3,email);
    ps.setString(4,rollno);
    ps.setString(5,dept);
    ps.setString(6,year);
    ps.setString(7,gender);
    ps.setString(8,mobile);
    ps.setString(9,dob);

    ps.setString(10,age);
    ps.setString(11,city);
    ps.setString(12,certification);
    ps.setString(13,maths);
    ps.setString(14,physics);

    ps.setString(15,chemistry);
    ps.setString(16,college);
    int x = ps.executeUpdate();
    if(x>0){
    out.println("REGISTRATION SUCCESS!!!");
}
else{
    out.println("REGISTRATION FAILED!!!");

}
    
}catch(Exception e){
        out.println(e);

}
%>


