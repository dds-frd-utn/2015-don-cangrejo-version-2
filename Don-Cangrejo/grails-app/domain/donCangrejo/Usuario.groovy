package donCangrejo

class Usuario {

	String username
	String email
	String nombre 
	String password
	String telefono
	String celular
	String direccion
	String numero
	String ciudad
	String barrio

	static mapping = {
		//nombre column: "nombre", sqlType: "varchar", length: 46
		version false
	}

	static constraints = {
		username nullable: false, maxSize: 45, unique: true
		email nullable: false, maxSize: 45, unique: true
		nombre nullable: false, maxSize: 45
		password nullable: false, maxSize: 45
		telefono nullable: false, maxSize: 45
		celular nullable: false, maxSize: 45
		direccion nullable: false, maxSize: 45
		numero nullable: false, maxSize: 45
		ciudad nullable: false, maxSize: 45
		barrio nullable: false, maxSize: 45
	}

	// Defino los seters y los geters solo porque la clase Session Manager los necesita.


	String getUsername(){
		return username
	}	
	String getEmail(){
		return email
	}	
	String getNombre(){
		return nombre
	}
	String getPassword(){
		return password
	}
	String getTelefono(){
		return telefono
	}
	String getCelular(){
		return celular
	}
	String getDireccion(){
		return direccion
	}
	String getNumero(){
		return numero
	}
	String getCiudad(){
		return ciudad
	}
	String getBarrio(){
		return barrio
	}

	String setUsername(String s){
		username = s
	}
	String setEmail(String s){
		email = s
	}	
	String setNombre(String s){
		nombre = s
	}	
	String setPassword(String s){
		password = s
	}
	String setTelefono(String s){
		telefono = s
	}
	String setCelular(String s){
		celular = s
	}	
	String setDireccion(String s){
		direccion = s
	}
	String setNumero(String s){
		numero = s
	}	
	String setCiudad(String s){
		ciudad = s
	}
	String setBarrio(String s){
		barrio = s
	}
}
