<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmtm:setLocale value="es_AR"/>

<section id="clientes">
    <div class="container">
        <div class="row">
            <div class="col-md-9">  
                <div class="card">
                    <div class="card-header">
                        <h4>Listado de Clientes</h4>
                    </div>
                </div>
            </div>
            <table class="table table-striped">
                <thead class="thead-dark">
                    <tr>
                        <th>#</th>
                        <th>Nombre</th>
                        <th>Saldo</th>
                    </tr>
                </thead>
                <tbody>
                    <!--Mostramos la lista de clientes-->
                    <c:forEach var="cliente" items="${clientes}">
                        <tr>
                            <td>
                                ${cliente.idCliente}
                            </td>
                            <td>
                                ${cliente.nombre} ${cliente.apellido}
                            </td>
                            <td>
                                <fmt:formatNumber value="${cliente.saldo}" type="currency"/>
                            </td>
                            <td>
                                <a href="${pageContext.request.contextPath}/ServletControlador?
                                   accion=editar&idCliente=${cliente.idCliente}
                                   class="btn btn-secondary"">

                                    <!--Boton bootstrap-->
                                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-pencil" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M11.293 1.293a1 1 0 0 1 1.414 0l2 2a1 1 0 0 1 0 1.414l-9 9a1 1 0 0 1-.39.242l-3 1a1 1 0 0 1-1.266-1.265l1-3a1 1 0 0 1 .242-.391l9-9zM12 2l2 2-9 9-3 1 1-3 9-9z"/>
                                        <path fill-rule="evenodd" d="M12.146 6.354l-2.5-2.5.708-.708 2.5 2.5-.707.708zM3 10v.5a.5.5 0 0 0 .5.5H4v.5a.5.5 0 0 0 .5.5H5v.5a.5.5 0 0 0 .5.5H6v-1.5a.5.5 0 0 0-.5-.5H5v-.5a.5.5 0 0 0-.5-.5H3z"/>
                                    </svg>Editar
                                </a>
                            </td>

                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</section>
