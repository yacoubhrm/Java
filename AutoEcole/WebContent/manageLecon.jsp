<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page import="java.util.*" %> 
 <%@ page import="com.dao.DaoLecon" %>
  <%@ page import="com.appfactory.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <!-- Bootstrap -->
    <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<link rel="stylesheet" href="/bootstrap/js/dropdown.js" media="screen" />
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    
<title>Gestion des le�ons</title>
</head>
<body>
<%@include file="menu.jsp" %>
<%  DaoLecon dao = (DaoLecon) Appfactory.getInstance().getModel("DaoLecon");%>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.jsp">Project name</a>
        </div>
    </div>
</nav>


<div class="container">
    
    <%
      // R�cup�ration du message d'erreur 
      String erreur = (String) request.getAttribute("erreur");
      // Affichage du message s'il existe
      if (erreur != null) { %>
           <p> <div class="alert alert-danger"> <strong>Erreur !</strong> <%= erreur %></div> </p>
      <%
      } else {
    	  
    	  String succes = (String) request.getAttribute("succes");
          // Affichage du message s'il existe
          if (succes != null) { %>
               <p> <div class="alert alert-success">    <strong>Succ�s !</strong> <%= succes %></div> </p>
    	  
         <%} 
      }
       %>
  
  <table class="table">
   <caption> Liste des Le�ons</caption>
   <thead>
      <tr>
         <th>date cours</th>
         <th>Heure debut</th>
         <th>Dur�e</th>
         <th>El�ve</th>
         <th>Moniteur</th>
         <th>V�hicule</th>
         <th>Modifier</th>
         <th>Suppimer</th>
      </tr>
   </thead>
   <tbody>
   <c:forEach var="p" items="<%= dao.findAll() %>" > 
       <tr class="active">
         <td>${p.dateCours}</td>
         <td>${p.heureDebut}</td>
         <td>${p.duree}</td>
         <td>${p.nume}</td>
         <td>${p.numm}</td>
         <td>${p.numv}</td>
         <td><a href="Leconctrl?action=modifier&numl=${p.numl}" >Modifier</a></td>
		 <td><a href="Leconctrl?action=supprimer&numl=${p.numl}" onclick="return confirm('Voulez vous supprimer')">Supprimer</a></td>
      </tr>
   
   </c:forEach>
   
   </tbody>
   </table>

</div><!-- /.container -->


</body>
</html>