<%-- 
    Document   : index
    Created on : 14/02/2022, 1:32:24 p. m.
    Author     : SENA
--%>

<%@page import="paquete.datos" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/Style.css"/>
        <script src="https://cdn.tailwindcss.com"></script>
        <title>Formulario clientes</title>
    </head>
    <body>
        <h1>Formulario de clientes</h1>
<div class="container">
  <div class="md:grid md:grid-cols-3 md:gap-6">
    <div class="mt-5 md:mt-0 md:col-span-2">
      <form>
        <div class="shadow overflow-hidden sm:rounded-md">
          <div class="px-4 py-5 bg-white sm:p-6">
            <div class="grid grid-cols-6 gap-6">
              <div class="col-span-6 sm:col-span-3">
                <label for="first-name" class="block text-sm font-medium text-gray-700">Tipo de documento</label>
                <input type="text" name="tipodedoc" id="first-name" autocomplete="given-name" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
              </div>

              <div class="col-span-6 sm:col-span-3">
                <label for="last-name" class="block text-sm font-medium text-gray-700">Documento</label>
                <input type="text" name="documento" id="last-name" autocomplete="family-name" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
              </div>

              <div class="col-span-6 sm:col-span-4">
                <label for="email-address" class="block text-sm font-medium text-gray-700">Nombre</label>
                <input type="text" name="nombre" id="email-address" autocomplete="email" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
              </div>

              <div class="col-span-6 sm:col-span-3">
                <label for="country" class="block text-sm font-medium text-gray-700">Apellido</label>
                <input type="text" name="apellido" id="email-address" autocomplete="email" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
              </div>

              <div class="col-span-6">
                <label for="street-address" class="block text-sm font-medium text-gray-700">Email</label>
                <input type="email" name="correo" id="street-address" autocomplete="street-address" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
              </div>

              <div class="col-span-6 sm:col-span-6 lg:col-span-2">
                <label for="city" class="block text-sm font-medium text-gray-700">Edad</label>
                <input type="number" name="edad" id="city" autocomplete="address-level2" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
              </div>

              <div class="col-span-6 sm:col-span-3 lg:col-span-2">
                <label for="region" class="block text-sm font-medium text-gray-700">Numero de telefono</label>
                <input type="tel" name="telefono" id="region" autocomplete="address-level1" class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
              </div>
          </div>
          <div class="px-4 py-3 bg-gray-50 text-right sm:px-6">
              <button type="submit" name="edades" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">edades</button>
              <button type="submit" name="documentos" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">documentos</button>
          </div>
        </div>
        </div>
    </form>
  </div>
</div>
<%

    datos dat = new datos();
    if(request.getParameter("edades")!=null){
    String tipodedocumento = request.getParameter("tipodedoc");
    String documento = request.getParameter("documento");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String correo = request.getParameter("correo");
    int edad = Integer.parseInt(request.getParameter("edad"));
    String telefono = request.getParameter("telefono");
    dat.comparacion(tipodedocumento, documento, nombre, apellido, correo, edad, telefono);
    }
    
    if(request.getParameter("documentos")!=null){
    String tipodedocumento = request.getParameter("tipodedoc");
    String documento = request.getParameter("documento");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String correo = request.getParameter("correo");
    int edad = Integer.parseInt(request.getParameter("edad"));
    String telefono =  request.getParameter("telefono");
    dat.documentos(tipodedocumento, documento, nombre, apellido, correo, edad, telefono);
    }
       
%>
    </body>
</html>
