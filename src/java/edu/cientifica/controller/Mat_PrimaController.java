/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package edu.cientifica.controller;

import edu.cientifica.model.Mat_Prima;
import edu.cientifica.model.dao.Mat_PrimaDAO;
import edu.cientifica.model.dao.Mat_PrimaDAOImpl;
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
@WebServlet(name = "Mat_PrimaController", urlPatterns = {"/mat_prima","/mat_prima/index","/mat_prima/create", "/mat_prima/edit","/mat_prima/delete", "/mat_prima/store", "/mat_prima/update"})
public class Mat_PrimaController extends HttpServlet {

    private static Mat_PrimaDAO materiaDao = new Mat_PrimaDAOImpl();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String urlPattern = request.getServletPath();

        switch (urlPattern) {
            case "/mat_prima":
            case "/mat_prima/index":
                out.print("Aqui se visualizara la lista de materiaprima");
                index(request, response);
                break;
            case "/mat_prima/create":
                out.print("Aqui se visualizara se presentara formulario nuevo materiaprima");
                create(request, response);
                break;
            case "/mat_prima/edit":
                out.print("Aqui se presentara el formulario editar materiaprima");
                edit(request, response);
                break;
            case "/mat_prima/delete":
                out.print("Aqui se visualizara se procesara la eliminacion de un materiaprima");
                delete(request, response);
                break;
            case "/mat_prima/store":
                out.print("Aqui se visualizara se guardara datos de nuevo materiaprima");
                store(request, response);
                break;
            case "/mat_prima/update":
                out.print("Aqui se visualizara se actualizara datos de materiaprima");
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
        List<Mat_Prima> listamateria = materiaDao.findAll();
        String path = "/view/mat_prima/index.jsp";
        request.setAttribute("titulo", "Listado de materia prima Actualizado");
        
        request.setAttribute("mat_prima", listamateria);
        processUrl(path, request, response);

    }
    
    private void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = "/view/mat_prima/create.jsp";
        processUrl(path, request, response);
        
    }

    private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String path = "/view/mat_prima/edit.jsp";
        String codigo = request.getParameter("codigo");
        
        Mat_Prima materia = materiaDao.findByCodigo(codigo);
        
        request.setAttribute("mat_prima", materia);
        processUrl(path, request, response);
    }

    private void store(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Mat_Prima mat = new Mat_Prima();
        mat.setCodigo(request.getParameter("codigo"));
        mat.setProveedor(request.getParameter("proveedor"));
        mat.setMaterial(request.getParameter("material"));
        mat.setMonto(Double.parseDouble(request.getParameter("monto")));
        mat.setMedidas(request.getParameter("medidas"));
        mat.setColor(request.getParameter("color"));
        mat.setCantidad(Integer.parseInt(request.getParameter("cantidad")));
        mat.setImagen(request.getParameter("imagen"));
        mat.setDescripcion(request.getParameter("descripcion"));
        materiaDao.insert(mat);
        response.sendRedirect(request.getContextPath()+"/mat_prima");
    }
    
    private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String path = request.getContextPath() + "/mat_prima";
    
    String codigo = request.getParameter("codigo");
    
    Mat_Prima mat1 = new Mat_Prima();
    mat1.setCodigo(codigo);
    mat1.setProveedor(request.getParameter("proveedor"));
    mat1.setMaterial(request.getParameter("material"));
    mat1.setMonto(Double.parseDouble(request.getParameter("monto")));
    mat1.setMedidas(request.getParameter("medidas"));
    mat1.setColor(request.getParameter("color"));
    mat1.setCantidad(Integer.parseInt(request.getParameter("cantidad")));
    mat1.setImagen(request.getParameter("imagen"));
    mat1.setDescripcion(request.getParameter("descripcion"));
    
    int x = materiaDao.update(mat1);
    if(x==1){
        response.sendRedirect(path);
    }else{
        String path1 = "/view/mat_prima/create.jsp";
        processUrl(path1, request, response);
    }
    
    
  }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String path = request.getContextPath() + "/mat_prima";
        
        String codigo = request.getParameter("codigo");
        
        materiaDao.delete(codigo);
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
