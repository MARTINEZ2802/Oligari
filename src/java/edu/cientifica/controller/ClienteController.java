package edu.cientifica.controller;

import edu.cientifica.model.Cliente;
import edu.cientifica.model.dao.ClienteDAO;
import edu.cientifica.model.dao.ClienteDAOImpl;
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
@WebServlet(name = "ClienteController", urlPatterns = {"/cliente", "/cliente/index", "/cliente/create", "/cliente/edit", "/cliente/delete", "/cliente/store", "/cliente/update"})
public class ClienteController extends HttpServlet {

    private static ClienteDAO clienteDao = new ClienteDAOImpl();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String urlPattern = request.getServletPath();

        switch (urlPattern) {
            case "/cliente":
            case "/cliente/index":
                out.print("Aqui se visualizara la lista de clientes");
                index(request, response);
                break;
            case "/cliente/create":
                out.print("Aqui se visualizara se presentara formulario nuevo cliente");
                create(request, response);
                break;
            case "/cliente/edit":
                out.print("Aqui se presentara el formulario editar ciente");
                edit(request, response);
                break;
            case "/cliente/delete":
                out.print("Aqui se visualizara se procesara la eliminacion de un cliente");
                delete(request, response);
                break;
            case "/cliente/store":
                out.print("Aqui se visualizara se guardara datos de la nueva indumentaria");
                store(request, response);
                break;
            case "/cliente/update":
                out.print("Aqui se visualizara se actualizara datos del cliente");
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
        List<Cliente> listaCliente = clienteDao.findAll();
        String path = "/view/cliente/index.jsp";
        request.setAttribute("titulo", "Listado de Clientes Actualizado");

        request.setAttribute("cliente", listaCliente);
        processUrl(path, request, response);

    }

    private void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = "/view/cliente/create.jsp";
        processUrl(path, request, response);

    }

    private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = "/view/cliente/edit.jsp";
        String dni = request.getParameter("dni");

        Cliente cli = clienteDao.findByCodigo(dni);

        request.setAttribute("cliente", cli);
        processUrl(path, request, response);
    }

    private void store(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cliente clie = new Cliente();
        clie.setNombre(request.getParameter("nombre"));
        clie.setApellido(request.getParameter("apellido"));
        clie.setDni(request.getParameter("dni"));
        clie.setCelular(request.getParameter("celular"));
        clie.setCorreo(request.getParameter("correo"));
        clienteDao.insert(clie);
        response.sendRedirect(request.getContextPath()+"/cliente");
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getContextPath() + "/cliente";

        String dni = request.getParameter("dni");

        Cliente clie = new Cliente();
        clie.setNombre(request.getParameter("nombre"));
        clie.setApellido(request.getParameter("apellido"));
        clie.setDni(dni);
        clie.setCelular(request.getParameter("celular"));
        clie.setCorreo(request.getParameter("correo"));

        int x = clienteDao.update(clie);
        if (x == 1) {
            response.sendRedirect(path);
        } else {
            String path1 = "/view/cliente/create.jsp";
            processUrl(path1, request, response);
        }

    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getContextPath() + "/cliente";

        String dni = request.getParameter("dni");

        clienteDao.delete(dni);
        response.sendRedirect(path);
    }

}
