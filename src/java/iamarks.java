/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import dataBase.DBConfig;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author tarun
 */
public class iamarks extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String regno=request.getParameter("regno");
                   
           try{
            Class.forName("com.mysql.jdbc.Driver");
                Connection con=new DBConfig().getConnection();
                Statement stat=con.createStatement();
                ResultSet res=stat.executeQuery("SELECT * FROM `candidatelist` WHERE regno='"+regno+"';");
                int flag=0;
                while(res.next()){
                   flag=1; 
                }
                if(flag==1)
                {
                    HttpSession hs=request.getSession();
                    hs.setAttribute("regno",regno);
                     String id=request.getParameter("id");
           String regno1=request.getParameter("regno");
           String scode=request.getParameter("scode");
           String maxmarks=request.getParameter("maxmarks");
           String obtainedmarks=request.getParameter("obtainedmarks");         
           try{
               Class.forName("com.mysql.jdbc.Driver");
               Connection con1=new DBConfig().getConnection();
               Statement stat1=con1.createStatement();
               stat1.executeUpdate("INSERT INTO `iamarks` (`id`, `regno`, `scode`, `maxmarks`, `obtainedmarks`) VALUES (NULL, '"+regno1+"', '"+scode+"', '"+maxmarks+"', '"+obtainedmarks+"');");
               out.println("<script>alert(\"IA MARKS  ADDED\")</script>");
               out.println("<meta http-equiv='refresh' content='0;iamarks.jsp'/>");
           }
           catch(Exception e){
               out.println(e);
               out.println("<script>alert(\"REGISTER NUMBER IS ALREADY EXIST\")</script>");
               out.println("<meta http-equiv='refresh' content='0;iamarks.jsp'/>");
           }
                }
                else{
                    out.println("<script>alert('the student reg no is not in regi list')</script>");
                    out.println("<meta http-equiv='refresh' content='0;iamarks.jsp'/>");
                }
           }          
           catch(Exception e){
               out.println(e);
           }  
          
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
