package donCangrejo

class Carrito {

	//Usuario usuario
    //String estado
	//static hasMany = [productos: Producto]
	public Usuario usuario
	public String estado  = 'p'
	public List productos = []
	public static hasMany = [productos: Producto]
	//static hasOne = [usuario:Usuario]
        
	static mapping = {
		version false
	}

	static constraints = {
                //usuario nullable: false
                estado maxSize: 1
	}

	def setUsuario(Usuario u){
		this.usuario = u
	}
	def setEstado(String e){
		this.estado = e
	}

	Usuario getUsuario(){
		return this.usuario
	}

	String getEstado(){
		return this.estado
	}
	def addProducto(Producto unProducto){
            this.productos.push(unProducto)
    }
}