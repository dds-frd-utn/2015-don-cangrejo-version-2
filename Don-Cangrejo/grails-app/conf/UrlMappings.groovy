class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        name login: "/iniciar"(view:"/iniciar")
        name direcciones: "/direcciones"(view:"/direcciones")
        name fotos: "/fotos"(view:"/fotos")
        name productos: "/productos"(view:"/productos")
        name registracion: "/registracion"(view:"/registracion")
        name index: "/"(view:"/index")

        // Controlador Categoria
        "/categoria"(controller:"FilterProducto")

        // Por Genero
        "/categoria/$c"(controller:"FilterProducto", action:"byCategoria")
        
        // Agregar Producto, pasando parametro un ID
        "/agregar/$idProducto"(controller:"AgregarProducto", action:"productos")

        "/borrar/$id"(controller:"AgregarProducto", action:"eliminarElemento")
        "/guardar"(controller:"AgregarProducto", action:"guardarCarrito")
        "/carrito"(controller:"AgregarProducto", action:"getCarritoProductos")
        
        "500"(view:'/error')
	}
}

