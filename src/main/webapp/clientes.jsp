<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes Activos</title>
    </head>
    <body>
        <h1>Clientes actuales</h1>
        <ul>
            <c:forEach var="cliente" items="${clientes}">
        </ul>
    </body>
</html>
