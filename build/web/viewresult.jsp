<!DOCTYPE html>
<%
    try{
        HttpSession hs=request.getSession();
        String fid=hs.getAttribute("fid").toString();
        String password=hs.getAttribute("password").toString();
        if(fid.equals("") ||password.equals("") ||fid.equals(null) ||password.equals("null"))
        {
            response.sendRedirect("flogin.jsp");
         }
    }
    catch(Exception e)
     {
        out.println(e);
        response.sendRedirect("flogin.jsp");
       }
%>
<%@page import="java.sql.DriverManager"%>
<%@page import="dataBase.DBConfig"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

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
   <style>
.print-button {
  display: block;
  margin: 50px auto;
  padding: 12px 30px;
  background-color: #007BFF;
  color: white;
  border: none;
  border-radius: 8px;
  font-size: 16px;
  cursor: pointer;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  transition: background-color 0.3s ease;
}

.print-button:hover {
  background-color: #0056b3;
}

/* Print styles */
@media print {
  /* Hide everything */
  body * {
    visibility: hidden;
  }

  /* Show only the print section */
  #print-section, #print-section * {
    visibility: visible;
  }

  /* Position the print section at the top-left */
  #print-section {
    position: absolute;
    left: 0;
    top: 0;
    width: 100%;
  }

  /* Ensure images in print section are visible and properly sized */
  #print-section img {
    display: inline !important;
    max-height: 120px !important;
    max-width: 100% !important;
  }

  /* Hide the print button */
  .print-button {
    display: none;
  }
   img {
        display: inline !important;
        max-height: 120px !important;
        max-width: 100% !important;
    }
}
</style>


    
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
                
                <a href="" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-primary"><i ></i>Faculty</h3>
                    
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                
                </div>
                 <div class="navbar-nav w-100">
                     <a href="shome.jsp" class="nav-item nav-link  "><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                <div class="nav-item dropdown">                   
                        <a href="" class="nav-link active dropdown-toggle" data-bs-toggle="dropdown" ><i class="fa fa-laptop me-2" active></i>Faculty</a>
                        <div class="dropdown-menu bg-transparent border-0">
                             <a href="iamarks.jsp" class="dropdown-item">IA Marks</a>
                            <a href="exam.jsp" class="dropdown-item">Exam</a>
                            <a href="result.jsp" class="dropdown-item">Result Analysis</a>                 
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
                       <button onclick="toggleLanguage()" class="btn btn-primary" id="language-btn">
    Change Language
</button>


                        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                            <a href="flogout1" class="dropdown-item">Logout</a>
                        </div>
                    </div>
                </div>
            </nav>
            
            <!-- Navbar End -->
           <div class="container-fluid pt-3 px-2" style="width: 100%;margin-left: auto;margin-right: auto">         
               
                        <div class="d-flex" style="padding: 15px">
                        <h2 class="text" style="margin-left: auto; margin-right: auto;">
                        <span class="govt-text kn">ಕರ್ನಾಟಕ</span>
                        <span class="govt-text en" style="display:none;">Government </span>
                        <img src="img/govtlogo.png" alt="" style="width: 60px; height: 60px;">
                        <span class="govt-text kn">ಸರ್ಕಾರ</span>
                        <span class="govt-text en" style="display:none;">of Karnataka</span>
                        </h2>
                        </div>

<div class="d-flex" style="padding: 5px; margin-top: -10px;">
    <h4 class="text" style="margin-left: auto; margin-right: auto;">
        <span class="dept-text kn">ತಾಂತ್ರಿಕ ಶಿಕ್ಷಣ ಇಲಾಖೆ</span>
        <span class="dept-text en" style="display:none;">Department of Technical Education</span>
    </h4>
</div>

                    <div class="table-responsive" id="print-section">
                      
                         
<%
try {
    int flag=0;
     double add=0;double add2=0;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = new DBConfig().getConnection();
    Statement stat = con.createStatement(); 
    String regno = request.getParameter("regno"); 
    String sem = request.getParameter("sem");
    ResultSet res = stat.executeQuery("SELECT * FROM `candidatelist` WHERE `regno`='" + regno + "'");
          
    while (res.next()) {
        String regno1 = res.getString("regno");
        String name = res.getString("name");
       
        String phno = res.getString("phno");
        String bid = res.getString("bid");
        String bname = "";
         Connection con1 = new DBConfig().getConnection();
    Statement stat1 = con1.createStatement(); 
        ResultSet res1 = stat1.executeQuery("SELECT * FROM `branch` WHERE `bid`='"+bid+"'");
        while(res1.next())
        {
            bname=res1.getString("bname");
        }
         out.println("<h2>Regno: " + regno1 + "</h2><h2>Name: " + name + "</h2><h2>Branch: " + bname + "</h2><h2>Sem: " + sem + "</h2><h2>Institute: [308]Sanjay Memorial Polytechnic Sagara</h2><h2>Phone No: " + phno + "</h2>");
         
          out.println("<table id=\"customers\"><tr class=\"text-dark\"><th scope=\"col\">Subject</th><th scope=\"col\">IA MAXIMUM MARKS</th><th scope=\"col\">IA OBTAINED MARKS</th><th scope=\"col\">IAM Percentage</th><th scope=\"col\">Exam MAXIMUM MARKS</th><th scope=\"col\">Exam OBTAINED MARKS</th><th scope=\"col\">Exam Percentage</th><th scope=\"col\">Pass or Fail</th></tr>");
        
         Connection con2 = new DBConfig().getConnection();
         Statement stat2 = con2.createStatement(); 
        ResultSet res2 = stat2.executeQuery("SELECT * FROM `subject` WHERE `bid`='"+bid+"' and `sem`='"+sem+"'");
       
        while(res2.next())
        {
            String sname=res2.getString("sname");
            String subcode=res2.getString("scode");
          //  out.println(subcode);
            Connection con3 = new DBConfig().getConnection();
    Statement stat3 = con3.createStatement(); 
    int count=0,tmaxmarks=0,tobmarks=0;
        ResultSet res3 = stat3.executeQuery("SELECT * FROM `iamarks` WHERE `scode`='"+subcode+"' and `regno`='"+regno+"'");
        while(res3.next())
        {
            count++;
            String iaobtainedmarks=res3.getString("obtainedmarks");
            String iamaxmarks=res3.getString("maxmarks");
            tmaxmarks=tmaxmarks+Integer.parseInt(iamaxmarks);
            tobmarks=tobmarks+Integer.parseInt(iaobtainedmarks);
            
        }
        int iamavg=0;
        int iaoavg=0;
        if(count==0)
        {
            
        }
        else{
        iamavg=tmaxmarks/count;
       iaoavg=tobmarks/count;
        }
         String eobtainedmarks="0";
            String emaxmarks="0";
         Connection con4 = new DBConfig().getConnection();
    Statement stat4 = con4.createStatement(); 
    
        ResultSet res4 = stat4.executeQuery("SELECT * FROM `exam` WHERE `scode`='"+subcode+"' and `regno`='"+regno+"'");
      int ecount=0;
        while(res4.next())
        {
           eobtainedmarks=res4.getString("obtainedmarks");
            emaxmarks=res4.getString("maxmarks");   
            ecount++;
            
        }
        
        // Calculate IAM Percentage
        double iamPercentage1 = (iaoavg * 100.0) / iamavg;
        //round iamPercentage1
        long iamPercentage = Math.round(iamPercentage1);
        double examPercentage=0;
        // Calculate Exam Percentage
       if(ecount==0)
       {
        examPercentage = 0;
       }
       else
       {
           examPercentage = (Double.parseDouble(eobtainedmarks) * 100.0) / Double.parseDouble(emaxmarks);
       }
        // Calculate total Percentage
         add = (iamPercentage+examPercentage);
         if(ecount==0)
         {
                      if (iamPercentage >35) 
                      {
                            out.println("<tr><td>"+sname+" ("+subcode+")</td><td>"+iamavg+"</td><td>"+iaoavg+"</td><td>"+iamPercentage+"%</td><td>"+emaxmarks+"</td><td>"+eobtainedmarks+"</td><td>"+examPercentage+"%</td><td>Pass</td></tr>");
                      }
                    else 
                 {
                       out.println("<tr><td>"+sname+" ("+subcode+")</td><td>"+iamavg+"</td><td>"+iaoavg+"</td><td>"+iamPercentage+"%</td><td>"+emaxmarks+"</td><td>"+eobtainedmarks+"</td><td>"+examPercentage+"%</td><td>Fail</td></tr>");
                       
            flag=1;
                 }
             add2=(add/200)*100;
        }
                 
         else{
        
             if (iamPercentage >35 && examPercentage>35)
             {
                out.println("<tr><td>"+sname+" ("+subcode+")</td><td>"+iamavg+"</td><td>"+iaoavg+"</td><td>"+iamPercentage+"%</td><td>"+emaxmarks+"</td><td>"+eobtainedmarks+"</td><td>"+examPercentage+"%</td><td>Pass</td></tr>");
             }
            else 
            {
               out.println("<tr><td>"+sname+" ("+subcode+")</td><td>"+iamavg+"</td><td>"+iaoavg+"</td><td>"+iamPercentage+"%</td><td>"+emaxmarks+"</td><td>"+eobtainedmarks+"</td><td>"+examPercentage+"%</td><td>Fail</td></tr>");
                flag=1;
            }
           
        add2=(add/200)*100;
            }
        }
        out.println("</table>");
           }
    
           if(flag==0)
           {
    
            if (add2 >= 75 )
               {
                   out.println("<h4>First Class with Distinction</h4>");
               } 
            else if (add2 >= 65 && add2 < 75 ) 
               {
                   out.println("<h4>First Division</h4>");
               } 
            else if (add2 >= 55 && add2 < 65 ) 
               {
                   out.println("<h4>Second Division</h4>");
               }
            else if (add2 >= 45 && add2 < 55 ) 
               {
                   out.println("<h4>Pass</h4>");
               }
           }
           else
           {
            out.println("<h4>Fail</h4>");
        }    
        out.println("<table id=\"customers\"><tr class=\"text-dark\"><th scope=\"col\">Total Percentage is:<td><h6>"+add2+"%</h6></td></tr></table>");
        
}
 catch (Exception e) {
    out.println(e);
}
%>
              
                </div>
           </div>
                
               
                 <button class="print-button" onclick="window.print()">Print</button>
            <!-- Recent Sales End -->

            <!-- Footer Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="bg-light rounded-top p-4">
                    <div class="row">
                        <div class="col-12 col-sm-6 text-center text-sm-start">
                            &copy; <a href="https://smpolytechnic.in/">SMP</a>, All Right Reserved. 
                        </div>                   
                    </div>
                </div>
            </div>   
            <!-- Footer End --> 
             </div> 
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
 <script>
function toggleLanguage() {
    const kannadaTexts = document.querySelectorAll('.kn');
    const englishTexts = document.querySelectorAll('.en');
    
    for (let i = 0; i < kannadaTexts.length; i++) {
        kannadaTexts[i].style.display = (kannadaTexts[i].style.display === 'none') ? '' : 'none';
    }

    for (let i = 0; i < englishTexts.length; i++) {
        englishTexts[i].style.display = (englishTexts[i].style.display === 'none') ? '' : 'none';
    }
}
</script>


</body>

</html>
 
 <!--double percentage = 75.648; // Example percentage value
long roundedPercentage = Math.round(percentage);
System.out.println("Rounded Percentage: " + roundedPercentage);-->