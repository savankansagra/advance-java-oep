/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author KEYUR KHANT
 */
@WebServlet(urlPatterns = {"/OneServlet"})
public class OneServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
        HttpSession session=request.getSession();
        String t_no = request.getParameter("tno"); 
        
        String bread=request.getParameter("b1");
        session.setAttribute("bread"+t_no,bread);
        String chapati=request.getParameter("b2");
        session.setAttribute("chapati"+t_no,chapati);
        String b_chapati=request.getParameter("b3");
        session.setAttribute("b_chapati"+t_no,b_chapati);
        String t_roti=request.getParameter("b4");
        session.setAttribute("t_roti"+t_no,t_roti);
        String cbm=request.getParameter("v1");
        session.setAttribute("cbm"+t_no,cbm);
        String pr=request.getParameter("v2");
        session.setAttribute("pr"+t_no,pr);
        String vh=request.getParameter("v3");
        session.setAttribute("vh"+t_no,vh);
        String bm=request.getParameter("v4");
        session.setAttribute("bm"+t_no,bm);
        String pk=request.getParameter("v5");
        session.setAttribute("pk"+t_no,pk);
        String kp=request.getParameter("v6");
        session.setAttribute("kp"+t_no,kp);
        String b_milk=request.getParameter("d1");
        session.setAttribute("b_milk"+t_no,b_milk);
        String coke=request.getParameter("d2");
        session.setAttribute("coke"+t_no,coke);
        String sprite=request.getParameter("d3");
        session.setAttribute("sprite"+t_no,sprite);
        String pepsi=request.getParameter("d4");
        session.setAttribute("pepsi"+t_no,pepsi);
        String mazza=request.getParameter("d5");
        session.setAttribute("mazza"+t_no,mazza);
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet OneServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            String s = (String) request.getAttribute("bread5");
            out.println(s);
            out.println("<h1>Servlet OneServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
