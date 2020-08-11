package com.faba.javapp.web;

import com.faba.javapp.datos.UtilidadesDbCliente;
import com.faba.javapp.dominio.Cliente;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //System.out.println("Hola mundo");
        //response.getWriter().print("Hola Mundo WEB!!!");
        
        List<Cliente> clientes = new UtilidadesDbCliente().listClients();

        String destination = "clientes.jsp";
        RequestDispatcher requestDispatcher = request.getRequestDispatcher(destination);

        request.setAttribute("clientes", clientes);

        requestDispatcher.forward(request, response);

        /*String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "editar":
                    //this.editarCliente(request, response);
                    break;
                case "eliminar":
                    //this.eliminarCliente(request, response);
                    break;
                default:
                    this.accionDefault(request, response);
            }
        } else {
            this.accionDefault(request, response);*/
    }

    private void accionDefault(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Cliente> clientes = new UtilidadesDbCliente().listClients();
        System.out.println("clientes = " + clientes);
        HttpSession sesion = request.getSession();
        sesion.setAttribute("clientes", clientes);
        sesion.setAttribute("totalClientes", clientes.size());
        //sesion.setAttribute("saldoTotal", this.calcularSaldoTotal(clientes));
        //request.getRequestDispatcher("clientes.jsp").forward(request, response);
        response.sendRedirect("clientes.jsp");
        //response.getWriter()
    }
}
