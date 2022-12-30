<%@page import="java.sql.*"%>


<html>
<head>
<title>Wcreate</title>
</head>
<body>

<%
String Id=request.getParameter("id");
String Name=request.getParameter("name");
String Email=request.getParameter("mail");
String PhoneNumber=request.getParameter("phone");


try{
	 
Class.forName("com.mysql.jdbc.Driver");
System.out.println(1);
Connection  con= DriverManager.getConnection(
"jdbc:mysql://localhost:3306/javadb","root","");
System.out.println(2);
Statement stmt=con.createStatement();
System.out.println(3);
stmt.executeUpdate("insert into students values(420, 'Qwerty')");
System.out.println(4);
con.close();
System.out.println(5);
}
catch(Exception e)
{
System.out.println(e);
 }






out.println(Id);
out.println(Name);
out.println(Email);
out.println(PhoneNumber);



%>



</body>
</html>