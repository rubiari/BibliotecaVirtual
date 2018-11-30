<%-- 
    Document   : listarLibros
    Created on : 29-nov-2018, 16:38:42
    Author     : Arranque 4
--%>

<%@page import="dao.CategoriaDAO"%>
<%@page import="dao.EditorialDAO"%>
<%@page import="model.Libro"%>
<%@page import="dao.LibroDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de libros</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <%@include file="css.jsp"%>
    </head>
    <body>
    <%@include file="menu.jsp"%>
        <div class="table-header">
            Listado de Libros Registrados
        </div>
        <div>
            <table id="dynamic-table" class="table table-striped table-bordered table-hovered">
                <thead>
                    <tr>
                        <th>ISBN</th>
                        <th>Titulo del libro</th>
                        <th>Autor</th>
                        <th>Fecha de Publicacion</th>
                        <th>Editorial</th>
                        <th>Categoria</th>
                    </tr>
                </thead>
                
                <tbody>
                    <% for(Libro l:LibroDAO.listar()){%>
                    <tr>
                        <td><%= l.getIsbn()%></td>
                        <td><%= l.getTitulo()%></td>
                        <td><%= l.getNombre_autor()%></td>
                        <td><%= l.getPublicacion()%></td>
                        <td><%= EditorialDAO.getEditorial(l.getNit_editorial())%></td>
                        <td><%= CategoriaDAO.getCategoria(l.getCodigo_categoria()) %></td>
                    </tr>
                    <% } %>
                </tbody>
        
            </table>
            
        </div>

    </body>
</html>
