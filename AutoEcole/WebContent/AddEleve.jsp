<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    
<title>Ajouter un �l�ve</title>
</head>
<body>
<%@include file="menu.jsp" %>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.jsp">Project name</a>
        </div>

    </div>
</nav>

<div class="container">
  
   <div class="row">
  <div class="col-md-6 col-md-offset-3">
  <div class="panel panel-info">
    <div class="panel-heading">Ajouter un El�ve</div>
    <div class="panel-body">
    <%
      // R�cup�ration du message d'erreur 
      String erreur = (String) request.getAttribute("erreur");
      // Affichage du message s'il existe
      if (erreur != null) { %>
           <p> <div class="alert alert-danger"> <strong>Erreur !</strong> <%= erreur %></div> </p>
      <%
      }%>
    <form role="form" action="Elevectrl?action=ajouter" method="post" >
   <form class="form-horizontal">
        <div class="form-group" style="padding: 20px;">
            <label for="nom" class="control-label col-xs-2">Nom</label>
            <div class="col-xs-10">
                <input type="text" class="form-control" name="nom" placeholder="Nom">
            </div>
        </div>

        <div class="form-group" style="padding: 20px;">
            <label for="prenom" class="control-label col-xs-2">Prenom</label>
            <div class="col-xs-10">
                <input type="text" class="form-control" name="prenom" placeholder="Prenom">
            </div>
        </div>
       
         <div class="form-group" style="padding: 20px;">
            <label for="adresse" class="control-label col-xs-2">Adresse</label>
            <div class="col-xs-10">
                <input type="text" class="form-control" name="adresse" placeholder="Adresse">
            </div>
        </div>
        
        <div class="form-group" style="padding: 20px;">
            <label for="datenaiss" class="control-label col-xs-2">Date Naissance</label>
            <div class="col-xs-10">
                <input type="text" class="form-control" name="datenaiss" placeholder="jj-mm-aaaa">
            </div>
        </div>
      
        <div class="form-group" style="padding: 20px;">
            <div class="col-xs-offset-2 col-xs-10">
                <button type="submit" class="btn btn-primary">Ajouter</button>
            </div>
        </div>
    </form>
    </form>

    </div>
  </div>
</div>
</div>    

</div><!-- /.container -->


</body>
</html>