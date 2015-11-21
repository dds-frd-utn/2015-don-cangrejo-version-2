package donCangrejo
import session.SessionManager
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpSession

class AgregarProductoController {

    def productos(Integer idProducto) { 
    	
    	// Pasar parametro id de un producto
        def producto = Producto.findById(idProducto)
        println("el id seteado es"+idProducto)
        println(producto.nombre);
        try {
            def smgr = new SessionManager(request.session)

            def c = smgr.getCurrentCart()

            c.addProducto(producto)

            // c.productos.each{
            //     println "Nombre: ${it.nombre}"
            // }  
            render "success"
        }
        catch(Exception e){
            println("Error. No se pudo agregar producto")
        }
        
    }

    def getCarritoProductos(){
        
        def smgr = new SessionManager(request.session)
        
        def c = smgr.getCurrentCart()

        println "Mostrar Carrito:"
        // c.productos.each{
        //     println "Nombre: ${it.nombre}"
        // } 

        render(contentType: 'text/json'){
            c.productos
        }
         
    }

     def eliminarElemento(Integer id){

       def smgr = new SessionManager(request.session) 
       def c = smgr.getCurrentCart()

       c.productos.removeAll{ producto->
            producto.id == id
      }

       println c.productos

       render "success"
    
}

    def guardarCarrito(){
        
        def smgr = new SessionManager(request.session) 
        def c = smgr.getCurrentCart()
        
        println("carrito para guardar")
        println(c)
        c.save(flush: true , failOnError: true)

        render "hola"
        
        
    }
}
