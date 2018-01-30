<cfparam name="attributes.title" default="The FML Blog" >
<cfif thistag.executionMode EQ 'start'>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta charset="utf-8" />
<title><cfoutput>#attributes.title#</cfoutput></title>
<link href="../../static/css/bootstrap.css" rel="stylesheet" type="text/css"></link>    
<script type="text/javascript" src="../../static/js/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" 
crossorigin="anonymous"></script>
<script type="text/javascript" src="../../static/js/bootstrap.js"></script>
<script type="text/javascript" src="../../static/js/datepicker.min.js"></script>
</head>

<body>

  <nav class="navbar navbar-expand-lg navbar-dark bg-success">
    <a class="navbar-brand" href="#">FML Blog</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Latest <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Archives</a>
        </li>        
        <li class="nav-item">
          <a class="nav-link" href="#">Authors</a>
        </li>        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Manage
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="/CMS/app/posts/create.cfm">Create Post</a>
            <a class="dropdown-item" href="#">Manage Posts</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Manage Authors</a>
          </div>
        </li>
      </ul>
      <form class="form-inline">        
        <input type="text" class="form-control mr-2" />
        <input type="submit" class="btn btn-outline-light" value="Search"/>
      </form>
    </div>
  </nav>

  

  <div class="container-fluid">
    <div class="row mt-2 mb-2">

  <!---end of header--->
  <cfelse>
  <!---begin of footer--->  
  <div id="footer">
    <p>&copy; Copyright 2016 - The FML Blog</p>
  </div>
</div>
</body>
</cfif>
</html>