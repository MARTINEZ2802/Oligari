/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package edu.cientifica.controller;

import edu.cientifica.model.Personal;
import edu.cientifica.model.dao.PersonalDAO;
import edu.cientifica.model.dao.PersonalDAOImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author Jose
 */
@WebServlet(name = "PersonalController", urlPatterns = {"/personal","/personal/index","/personal/create", "/personal/edit","/personal/delete", "/personal/store", "/personal/update"})
public class PersonalController extends HttpServlet {
    private static PersonalDAO personalDao = new PersonalDAOImpl();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String urlPattern = request.getServletPath();

        switch (urlPattern) {
            case "/personal":
            case "/personal/index":
                out.print("Aqui se visualizara la lista de autores");
                index(request, response);
                break;
            case "/personal/create":
                out.print("Aqui se visualizara se presentara formulario nuevo autor");
                create(request, response);
                break;
            case "/personal/edit":
                out.print("Aqui se presentara el formulario editar indumentaria");
                edit(request, response);
                break;
            case "/personal/delete":
                out.print("Aqui se visualizara se procesara la eliminacion de un autor");
                delete(request, response);
                break;
            case "/personal/store":
                out.print("Aqui se visualizara se guardara datos de nuevo autor");
                store(request, response);
                break;
            case "/personal/update":
                out.print("Aqui se visualizara se actualizara datos de autor");
                update(request, response);
                break;
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

    private void index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Personal> listapersonal = personalDao.findAll();
        String path = "/view/personal/index.jsp";
        request.setAttribute("titulo", "Listado de Personal Actualizado");
        
        request.setAttribute("personal", listapersonal);
        processUrl(path, request, response);

    }
    
    private void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = "/view/personal/create.jsp";
        processUrl(path, request, response);
        
    }

    private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String path = "/view/personal/edit.jsp";
        String dni = request.getParameter("dni");
        Personal per = personalDao.findByCodigo(dni);
        request.setAttribute("personal", per);
        processUrl(path, request, response);
    }

    private void store(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Personal perso = new Personal();
        perso.setDni(request.getParameter("dni"));
        perso.setNombre(request.getParameter("nombre"));
        perso.setApellido(request.getParameter("apellido"));
        perso.setTelefono(request.getParameter("telefono"));
        perso.setCorreo(request.getParameter("correo"));
        perso.setCargo(request.getParameter("cargo"));
        perso.setSueldo(Double.parseDouble(request.getParameter("sueldo")));
        perso.setDescripcion(request.getParameter("descripcion"));
        personalDao.insert(perso);
        response.sendRedirect(request.getContextPath()+"/personal");
    }
    
    private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String path = request.getContextPath() + "/personal";
    
    String dni = request.getParameter("dni");
    
    Personal pers = new Personal();
    pers.setDni(dni);
    pers.setNombre(request.getParameter("nombre"));
    pers.setApellido(request.getParameter("apellido"));
    pers.setTelefono(request.getParameter("telefono"));
    pers.setCorreo(request.getParameter("correo"));
    pers.setCargo(request.getParameter("cargo"));
    pers.setSueldo(Double.parseDouble(request.getParameter("sueldo")));
    pers.setDescripcion(request.getParameter("descripcion"));
    
    int x = personalDao.update(pers);
    if(x==1){
        response.sendRedirect(path);
    }else{
        String path1 = "/view/mat_prima/create.jsp";
        processUrl(path1, request, response);
    }
  }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String path = request.getContextPath() + "/personal";
        
        String dni = request.getParameter("dni");
        
        personalDao.delete(dni);
        response.sendRedirect(path);
    }
    protected void processUrl(String path, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ServletContext ctx = getServletContext();
        RequestDispatcher rd = ctx.getRequestDispatcher(path);

        if (rd != null) {
            rd.forward(request, response);
        } else {
            // log.error("LA RUTA NO ES VALIDA.");
        }
    }
}
