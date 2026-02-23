<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="dataBase.DBConfig"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<%
    try{
        HttpSession hs=request.getSession();
        String sid=hs.getAttribute("sid").toString();
        String password=hs.getAttribute("password").toString();
        if(sid.equals("") ||password.equals("") ||sid.equals(null) ||password.equals("null"))
        {
            response.sendRedirect("slogin.jsp");
             //out.println("<meta http-equiv='refresh' content='0;login.jsp'/>");
        }
    }
    catch(Exception e)
     {
        out.println(e);
        response.sendRedirect("slogin.jsp");
        // out.println("<meta http-equiv='refresh' content='0;login.jsp'/>");
    }
%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SANJAY MEMORIAL POLYTECHNIC</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-xxl position-relative bg-white d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-light navbar-light">
                <a href="shome.jsp" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-primary">STAFF</h3>
                </a>
               
                <div class="navbar-nav w-100">
                     <a href="shome.jsp" class="nav-item nav-link  "><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                
                        <div class="nav-item dropdown">
                        <a href="#" class="nav-link active dropdown-toggle" data-bs-toggle="dropdown"><i class="far fa-file-alt me-2"></i>Staff</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="#" class="dropdown-item">Candidate list</a>
                            <a href="circular.jsp" class="dropdown-item">Circulars</a>  
                            <a href="timetable.jsp" class="dropdown-item">Time Table</a>
                            <a href="examstaff.jsp" class="dropdown-item">Exam Staff list</a>
                            <a href="#" class="dropdown-item">MIS Report</a>
                        </div>
                    </div>
                   
                    </div>
            </nav>
        </div>
        <!-- Sidebar End -->


        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
                <a href="home.jsp" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-hashtag"></i></h2>
                </a>
                <a href="#" class="sidebar-toggler flex-shrink-0">
                    <i class="fa fa-bars"></i>
                </a>
                <form class="d-none d-md-flex ms-4">
                    <input class="form-control border-0" type="search" placeholder="Search">
                </form>
                <div class="navbar-nav align-items-center ms-auto">
                   
                   <div class="navbar-nav align-items-center ms-auto">
                   
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <img class="rounded-circle me-lg-2" src="img/tt.jpg" alt="" style="width: 40px; height: 40px;">
                            <span class="d-none d-lg-inline-flex">Staff</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                            <a href="slogout1" class="dropdown-item">Logout</a>
                        </div>
                    </div>
                </div>
                </div>
            </nav>
            <!-- Navbar End -->


            <!-- Form Start -->
                 <div class="container-fluid pt-3 px-2" style="width: 60%;margin-left: auto;margin-right: auto">
                  <div class="bg-light rounded p-4 p-sm-5 my-4 mx-3"> 
                    <center><h3 class="text-primary" >STUDENT <span style='color: black'>LIST</span></h3></center>
                    <%
           String regno=request.getParameter("id");
          // String sem=request.getParameter("sem");
                    String regno1=null;
                         String name=null;
                         String bid=null;
                         String sem=null;
                         String dob=null;
                         String phno=null;
                         String address=null;
                         String parentsphno=null;
                
             try{
                 int slno=0;
            Class.forName("com.mysql.jdbc.Driver");
                Connection con=new DBConfig().getConnection();
                Statement stat=con.createStatement();
                ResultSet res=stat.executeQuery("SELECT * FROM `candidatelist` WHERE `regno`='"+regno+"';"); 
                
                while(res.next())
                {
                    slno++;
                         regno1=res.getString("regno");
                         name=res.getString("name");
                         bid=res.getString("bid");
                         sem=res.getString("sem");
                         dob=res.getString("dob");
                         phno=res.getString("phno");
                         address=res.getString("address");
                         parentsphno=res.getString("parentsphno");
                         //out.println("<tr><td>"+slno+"</td><td>"+regno+"</td><td>"+name+"</td><td>"+bidd+"</td><td>"+semd+"</td><td>"+dob+"</td><td>"+phno+"</td><td>"+address+"</td><td>"+parentsphno+"</td><td><a href=edit.jsp?id="+regno+">EDIT</a></td><td><a href=deletest?id="+regno+">DELETE</a></td></tr>");                           
                        }
                }
                                    
                   catch(Exception e)
                    {
                         out.println(e);
                    }
                                    
          %>
                    <form action="edit" method="POST" style="width: 100%;margin-left: auto;margin-right: auto">                      
                                <div class="mb-3">
                                    <label for="exampleInputregisternumber" class="form-label">Register number</label>
                                    <input type="text" name="regno" class="form-control" id="exampleInputregisternumber" value="<% out.print(regno1); %>" required>
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputname" class="form-label">Student Name</label>
                                    <input type="text" name="name" class="form-control" id="exampleInputstudentname" value="<% out.print(name); %>" required>
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputbid" class="form-label">Bid</label>
                                    <input type="text" name="bid" class="form-control" id="exampleInputbid" value="<% out.print(bid); %>" required>
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputsemester" class="form-label">Semester </label>
                                    <div class="form-floating mb-3">
                                <select class="form-select" name="sem" id="floatingSelect" aria-label="Floating label select example"  required>
                                   
                                    <option <% if(sem.equals("1")){out.print("selected");} %> value="1" >1st</option>
                                    <option <% if(sem.equals("2")){out.print("selected");} %> value="2">2nd</option>
                                    <option <% if(sem.equals("3")){out.print("selected");} %> value="3">3rd</option>
                                    <option <% if(sem.equals("4")){out.print("selected");} %> value="4">4th</option>
                                    <option <% if(sem.equals("5")){out.print("selected");} %> value="5">5th</option>
                                    <option <% if(sem.equals("6")){out.print("selected");} %> value="6">6th</option>
                                </select>
                                <label for="floatingSelect">Select semester</label>
                            </div>
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputdate" class="form-label">Date Of Birth</label>
                                    <input type="date" name="dob" class="form-control" id="exampleInputdate" value="<% out.print(dob); %>" required>
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputphno" class="form-label">PH.NO</label>
                                    <input type="number" name="phno" class="form-control" id="exampleInputphno" value="<% out.print(phno); %>" required>
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputaddress" class="form-label">Address</label>
                                    <input type="textarea" name="address" class="form-control" id="exampleInputaddress" value="<% out.print(address); %>" required>
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputphno" class="form-label">Parents PH.NO</label>
                                    <input type="number" name="parentsphno" class="form-control" id="exampleInputparentsphno" value="<% out.print(parentsphno); %>" required>
                                </div>
                        <div style="margin-left: auto;margin-right: auto">
                                <button type="submit" class="btn btn-primary">UPDATE</button>
                               
                        </div>
                            </form>
                        </div>
                  
                 </div>
</div>
            </div>
             <!-- Form end -->     

            <!-- Footer Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="bg-light rounded-top p-4">
                    </div>
                </div>
           
            <!-- Footer End -->
  
        <!-- Content End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/chart/chart.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>