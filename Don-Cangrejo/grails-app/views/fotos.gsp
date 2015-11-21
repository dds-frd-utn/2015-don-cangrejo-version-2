<!DOCTYPE html>
<html>
<head>
  
  <!--Import materialize.css-->
  <!-- Compiled and minified CSS -->

  <meta charset='utf-8'>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" href="./css/a.css">

  <!--Import jQuery before materialize.js-->
  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>      

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js"></script>
    

</head>
  <style type="text/css">
  </style>

  <body>

  <!-- NAVBAR DE INICIO DE SESION Y DE REGISTRACION -->
  <div class="navbar-fixed">
    <nav>
      <div class="nav-wrapper">
         <a href="#!" class="brand-logo"> <img src="img/logo.jpg"> <!-- random image -->La pizzeria de Don Cangrejo</a>
        <ul class="right hide-on-med-and-down">
        <g:render template="components/login_menu_view"/>
        </ul>
      </div>
    </nav>
  </div>

  <!-- Dropdown Structure -->
  <ul id="dropdown1" class="dropdown-content">
    <li><link:fotos>Fotos</link:fotos></li>
    <li><link:direcciones>Direcciones</link:direcciones></li>
    <li class="divider"></li>
  </ul>
  <nav>
    <div class="nav-wrapper">
      <ul class="hide-on-med-and-down">
        <li><link:index>Home</link:index></li>
        <li><link:productos>Productos</link:productos></li>
        <!-- Dropdown Trigger -->
        <li><a class="dropdown-button" href="#!" data-activates="dropdown1">Locales<i class="material-icons left"></i></a></li>
        <ul class="right hide-on-med-and-down"><a></a></ul>
      </ul>
    </div>
  </nav>

  <!-- Modal de Login -->
<g:render template="components/login_view"/>
  <!-- SLIDER -->
  <div class="slider">
    <ul class="slides">
      <li>
        <img src="img/slider1.jpg"> <!-- random image -->
        <div class="caption right-align">
          <h3 class="letraazul"></h3>
          <h5 class="light grey-text text-lighten-15"></h5>
        </div>
      </li>
      <li>
        <img src="img/slider2.jpg"> <!-- random image -->
        <div class="caption right-align">
          <h3 class="letraazul"></h3>
          <h5 class="light grey-text text-lighten-15"></h5>
        </div>
      </li>     
       <li>
        <img src="img/slider3.jpg"> <!-- random image -->
        <div class="caption center-align">
          <h3 class="letraazul"></h3>
          <h5 class="light grey-text text-lighten-15"></h5>
        </div>
      </li>
      <li>
        <img src="img/slider4.jpg"> <!-- random image -->
        <div class="caption left-align">
          <h3 class="letraazul"></h3>
          <h5 class="light grey-text text-lighten-15"></h5>
        </div>
      </li>
      <li>
        <img src="img/slider5.jpg"> <!-- random image -->
        <div class="caption right-align">
          <h3 class="letraazul"></h3>
          <h5 class="light grey-text text-lighten-15"></h5>
        </div>
      </li>
      <li>
        <img src="img/slider6.jpg"> <!-- random image -->
        <div class="caption right-align">
          <h3 class="letraazul"></h3>
          <h5 class="light grey-text text-lighten-15"></h5>
        </div>
      </li>
      <li>
        <img src="img/slider7.jpg"> <!-- random image -->
        <div class="caption right-align">
          <h3 class="letraazul"></h3>
          <h5 class="light grey-text text-lighten-15"></h5>
        </div>
      </li>
      <li>
        <img src="img/slider8.jpg"> <!-- random image -->
        <div class="caption right-align">
          <h3 class="letraazul"></h3>
          <h5 class="light grey-text text-lighten-15"></h5>
        </div>
      </li>
    </ul>
  </div>
 <br>

<iframe class="youtube-player" type="text/html" width="1000" height="500" src="http://www.youtube.com/embed/wswzGikFf1Q" src= "https://www.youtube.com/watch?v=j9lbtPARKRI"frameborder="0"></iframe>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

  <!-- I got these buttons from simplesharebuttons.com -->
<div id="share-buttons" align=center>
  <!-- Facebook -->
  <a href="https://www.facebook.com/productodedoncangrejo123?fref=ts" target="_blank">
    <img src="https://simplesharebuttons.com/images/somacro/facebook.png" alt="Facebook" />
  </a>
  <!-- Google+ -->
  <a href="https://plus.google.com/u/0/109798292158804007812/about" target="_blank">
    <img src="https://simplesharebuttons.com/images/somacro/google.png" alt="Google" />
  </a>
  <!-- Tumblr-->
  <a href="http://doncangrejo.tumblr.com/" target="_blank">
    <img src="https://simplesharebuttons.com/images/somacro/tumblr.png" alt="Tumblr" />
  </a>
  <!-- Twitter -->
  <a href="https://twitter.com/DonCangri" target="_blank">
    <img src="https://simplesharebuttons.com/images/somacro/twitter.png" alt="Twitter" />
  </a>
</div> 

<!-- FOOTER DE LA EMPRESA -->
</body>
    <footer><a target="_blank"></a>© 2015 Todos los derechos reservados </footer>
  <script type="text/javascript">

      $(document).ready(function(){
            $('.slider').slider({full_width: true});
      });

      $(document).ready(function(){
      // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
      $('.modal-trigger').leanModal();
       });

          // Lanzamos ajax de envio de mail.
            $("#aceptar").click(function(){
                  Materialize.toast('Mensaje enviado satisfactoriamente!', 10000 , null)
            });
  </script>
</html>