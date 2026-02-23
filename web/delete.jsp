<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--<a href="showstudent.jsp">ADD</a>-->
        <div class="heading_continer">
               <h2>DELETE</h2>
               <%
                String regno=request.getParameter("regno");
                    try{
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/clgmaintenance","root","");                        
                         Statement stat=con.createStatement();
                          stat.executeUpdate("DELETE From candidatelist WHERE  regno='"+regno+"';");
                          con.close();
                          out.println("<script>alert('Deleted')</script><META http-equiv=\"refresh\" content=\"o;showstudent.jsp\">");
                            }
                    catch(Exception e){
                        out.println("DB Error"+e);
                    }
                %>
        </body>
        </html>