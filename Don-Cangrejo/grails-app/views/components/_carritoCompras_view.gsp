<%@ page import="session.SessionManager" %>
<!-- Modal Structure de Carrito de Compras -->
<div id="carritoCompras" class="modal modal-fixed-footer">
	<div class="modal-content">
	  <h4>Carrito de Compras</h4>
	  
	    <div id="carrito-lst" class="collection">
	    	%{-- Logica Java --}%
	    	<%try {
	    			def smgr = new SessionManager(request.session)
	    			def c = smgr.getCurrentCart()
	    			def productosCarrito = c.productos	
		    %>
		   	    <g:each var="producto" in="${productosCarrito}">
			      	<a href="#!" id="${producto.id}" class="collection-item">
			      		<table>
			      		<td id="${producto.id}">${producto.nombre}</td>
			      		<td id="preciosprod">${producto.precio}</td>
			      		<span id="${producto.id}" class="delete-elem new badge">Borrar</span>
			      		</table>
			      		<!--<span id="borrar"class="new badge">Borrar</span>-->
			      	</a>
		        </g:each>
	        <%}catch(Exception e){
	    		println("No hay productos")			
	    	}%>
      	</div>
      	<td>Total:
      	<input type="text" id="total" disabled value="0" class="white" ></td>
      	<a href="#!" id="checkOut" class="waves-effect waves-light btn modal-close">
      		Confirmar
      	</a>

	</div>
	<div class="modal-footer">
	  	<a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">
	  		Cerrar
	  	</a>
	</div>
</div>

<script type="text/javascript" src="./jquery/jquery.js"></script>
<script type="text/javascript">

   // function sumar()
    //{
      //  document.getElementById("total").value=(parseFloat("preciosprod"));
    //}

	$("#checkOut").click(function(){
		Materialize.toast('Checkout realizado !', 7000 , null)
	});

$(".delete-elem").click(function(){
		
		var productoId = parseInt( $(this).attr('id') );

		$("#"+productoId).hide(300);
		var time = 1000;
		$.ajax( "/don-cangrejo/borrar/"+productoId ).done(function( resp ){	
		Materialize.toast('Producto eliminado', time);
		});
			
	});
</script>