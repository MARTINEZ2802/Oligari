package edu.cientifica.controller;

import edu.cientifica.model.Indumentaria;
import edu.cientifica.model.dao.IndumentariaDAO;
import edu.cientifica.model.dao.IndumentariaDAOImpl;
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
@WebServlet(name = "IndumentariaController", urlPatterns = {"/indumentaria","/indumentaria/index","/indumentaria/create", "/indumentaria/edit","/indumentaria/delete", "/indumentaria/store", "/indumentaria/update"})
public class IndumentariaController extends HttpServlet {
    private static IndumentariaDAO indumentariaDao = new IndumentariaDAOImpl();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String urlPattern = request.getServletPath();

        switch (urlPattern) {
            case "/indumentaria":
            case "/indumentaria/index":
                out.print("Aqui se visualizara la lista de autores");
                index(request, response);
                break;
            case "/indumentaria/create":
                out.print("Aqui se visualizara se presentara formulario nuevo autor");
                create(request, response);
                break;
            case "/indumentaria/edit":
                out.print("Aqui se presentara el formulario editar indumentaria");
                edit(request, response);
                break;
            case "/indumentaria/delete":
                out.print("Aqui se visualizara se procesara la eliminacion de un autor");
                delete(request, response);
                break;
            case "/indumentaria/store":
                out.print("Aqui se visualizara se guardara datos de la nueva indumentaria");
                store(request, response);
                break;
            case "/indumentaria/update":
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
    
    
    
    
    
    
    private void index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Indumentaria> listaIndumentaria = indumentariaDao.findAll();
        String path = "/view/indumentaria/index.jsp";
        request.setAttribute("titulo", "Listado de indumentaria Actualizado");
        
        request.setAttribute("indumentarias", listaIndumentaria);
        processUrl(path, request, response);

    }
    
    private void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = "/view/indumentaria/create.jsp";
        processUrl(path, request, response);
        
    }

    private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String path = "/view/indumentaria/edit.jsp";
        String codigo = request.getParameter("codigo");
        
        Indumentaria indu = indumentariaDao.findByCodigo(codigo);
        
        request.setAttribute("indumentaria", indu);
        processUrl(path, request, response);
    }

    private void store(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Indumentaria indu = new Indumentaria();
        indu.setCodigo(request.getParameter("codigo"));
        indu.setNombre(request.getParameter("nombre"));
        indu.setMaterial(request.getParameter("material"));
        indu.setColor(request.getParameter("color"));
        indu.setTalla(request.getParameter("talla"));
        indu.setCantidad(Integer.parseInt(request.getParameter("cantidad")));
        indu.setPrecio(Double.parseDouble(request.getParameter("precio")));
        indu.setImagen(request.getParameter("imagen"));
        indu.setDescripcion(request.getParameter("descripcion"));
        indumentariaDao.insert(indu);
        response.sendRedirect(request.getContextPath()+"/indumentaria");
    }
    
    private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String path = request.getContextPath() + "/indumentaria";
    
    String codigo = request.getParameter("codigo");
    
    Indumentaria indu1 = new Indumentaria();
    indu1.setCodigo(codigo);
    indu1.setNombre(request.getParameter("nombre"));
    indu1.setMaterial(request.getParameter("material"));
    indu1.setColor(request.getParameter("color"));
    indu1.setTalla(request.getParameter("talla"));
    indu1.setCantidad(Integer.parseInt(request.getParameter("cantidad")));
    indu1.setPrecio(Double.parseDouble(request.getParameter("precio")));
    indu1.setImagen(request.getParameter("imagen"));
    indu1.setDescripcion(request.getParameter("descripcion"));
    
    int x = indumentariaDao.update(indu1);
    if(x==1){
        response.sendRedirect(path);
    }else{
        String path1 = "/view/indumentaria/create.jsp";
        processUrl(path1, request, response);
    }
    
    
  }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String path = request.getContextPath() + "/indumentaria";
        
        String codigo = request.getParameter("codigo");
        
        indumentariaDao.delete(codigo);
        response.sendRedirect(path);
    }

    
}
