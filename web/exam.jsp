<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="dataBase.DBConfig"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<%
    try{
        HttpSession hs=request.getSession();
        String fid=hs.getAttribute("fid").toString();
        String password=hs.getAttribute("password").toString();
        if(fid.equals("") ||password.equals("") ||fid.equals(null) ||password.equals(null))
        {
            response.sendRedirect("flogin.jsp");
            out.println("<meta http-equiv='refresh' content='0;flogin.jsp'/>");
        }
    }
    catch(Exception e)
     {
        out.println(e);
        response.sendRedirect("flogin.jsp");
        out.println("<meta http-equiv='refresh' content='0;flogin.jsp'/>");
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
        
        <div class="sidebar pe-6 pb-4">
            <nav class="navbar bg-light navbar-light">
                <a href="index.html" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-primary"><i ></i>FACULTY</h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                
                </div>
                 <div class="navbar-nav w-100">
                     <a href="fhome.jsp" class="nav-item nav-link  "><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                <div class="nav-item dropdown">                   
                        <a href="#" class="nav-link active dropdown-toggle" data-bs-toggle="dropdown" ><i class="fa fa-laptop me-2" active></i>Faculty</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="iamarks.jsp" class="dropdown-item">IA Marks</a>
                            <a href="#" class="dropdown-item">Exam</a>
                            <a href="result.jsp" class="dropdown-item">Result Analysis</a>
                        </div>
                </div>
                       
                    </div><br>
                  
            </nav>
            
        </div>
        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
                <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-hashtag"></i></h2>
                </a>
                <a href="#" class="sidebar-toggler flex-shrink-0">
                    <i class="fa fa-bars"></i>
                </a>
                <form class="d-none d-md-flex ms-4">
                    <input class="form-control border-0" type="search" placeholder="Search">
                </form>
                <div class="navbar-nav align-items-center ms-auto">
                    
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <img class="rounded-circle me-lg-2" src="img/tt.jpg" alt="" style="width: 40px; height: 40px;">
                            <span class="d-none d-lg-inline-flex">Faculty</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                            <a href="flogout1" class="dropdown-item">Logout</a>
                        </div>
                    </div>
                </div>
            </nav>
           <div class="container-fluid pt-3 px-2" style="width: 100%;margin-left: auto;margin-right: auto">
                  <div class="bg-light rounded p-4 p-sm-5 my-4 mx-3"> 
                      <center>
                      <h3 class="text-primary">EXAM <span style="color: black">MARKS</span></h3>
                      </center>
                            <form action="exam" method="POST">
                                <div class="mb-3">
                                    <label for="exampleInputregisternumber" class="form-label">Register number</label>
                                    <input type="text" name="regno" class="form-control" id="exampleInputregisternumber" required>
                                </div>
                                <div class="mb-3">
                                    
                                    <label for="exampleInpusubjectcode" class="form-label">Subject Code</label>
                                    <select  name="scode" class="form-control" id="exampleInpusubjectcode" required>
                                        <option selected="true" disabled="true">Select Subject</option>
                                    <%
   try{
            Class.forName("com.mysql.jdbc.Driver");
                Connection con=new DBConfig().getConnection();
                Statement stat=con.createStatement();
                ResultSet res=stat.executeQuery("SELECT * FROM `subject`;");                 
                while(res.next()){                   
                    String scode=res.getString("scode");
                    String sname=res.getString("sname");
                    String bidd=res.getString("bid");
                    String semd=res.getString("sem");     
                          out.println("<option value="+scode+">"+sname+"("+scode+")</option>");                           
                        
                   
                     
                }
                                    }
                                    
                                    catch(Exception e)
                                    {
                                        out.println(e);
                                    }
                                    %>
                                    </select>
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputmaxmarks" class="form-label">Max Marks</label>
                                    <input type="number" name="maxmarks" class="form-control" id="exampleInputmaxmarks" required>
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputobtainedarks" class="form-label">Obtained Marks</label> 
                                    <input type="number" name="obtainedmarks" class="form-control" id="exampleInputobtainedarks" required><br>
                                </div>    
                                    <center><button type="submit" class="btn btn-primary">ADD</button>
                                        <button type="submit" class="btn btn-primary" ><a href="viewexam.jsp" style="color: white;text-decoration: none">VIEW</a></button></center>  
                                        
                             <!--Start Angular JS code--> 
                             
                             <!--end Angular JS code-->
                         </form>
                      <div id="percentageDisplay" name="pers"></div>

                    </div>
             </div>
    
         

            <!-- Footer Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="bg-light rounded-top p-4">
                    <div class="row">
                        <div class="col-12 col-sm-6 text-center text-sm-start">
                            &copy; <a href="#">SMP</a>, All Right Reserved. 
                        </div>
                     
                    </div>
                </div>
            </div>
            <!-- Footer End -->
        </div>
        <!-- Sidebar End -->


        <!-- Content Start -->
      
        <!-- Content End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>
<script>
    // Function to calculate percentage and update UI
    function calculatePercentage() {
        var maxMarksInput = document.getElementById("exampleInputmaxmarks");
        var obtainedMarksInput = document.getElementById("exampleInputobtainedarks");
        var percentageDisplay = document.getElementById("percentageDisplay");

        var maxMarks = parseFloat(maxMarksInput.value);
        var obtainedMarks = parseFloat(obtainedMarksInput.value);

        // Check if both max marks and obtained marks are valid numbers
        if (!isNaN(maxMarks) && !isNaN(obtainedMarks)) {
            var percentage = (obtainedMarks / maxMarks) * 100;
            percentageDisplay.innerHTML = "Percentage: " + percentage.toFixed(2) + "%";
        } else {
            percentageDisplay.innerHTML = ""; // Clear the display if input is invalid
        }
    }

    // Event listener to calculate percentage when input changes
    document.getElementById("exampleInputmaxmarks").addEventListener("input", calculatePercentage);
    document.getElementById("exampleInputobtainedarks").addEventListener("input", calculatePercentage);
</script>
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