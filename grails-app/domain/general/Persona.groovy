package general

class Persona {

	transient springSecurityService

	String username
	String password
	boolean enabled = true
	boolean accountExpired = false
	boolean accountLocked = false
	boolean passwordExpired = false

        String nombre
        String apellidoPaterno
        String apellidoMaterno
        String direccion
        String telefono
        Date edad
        String sexo
        String email

	static constraints = {
		username blank: false, unique: true
		password blank: false
                
                nombre blank: false, maxSize:32
                apellidoPaterno blank: false, maxSize:32
                apellidoMaterno blank: false, maxSize:32
                direccion blank: false, maxSize:100
                telefono blank: false, matches:"[0-9]{10}"
                edad blank: false
                sexo inList: ["M","F"]
                email blank:false, mail:true
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Rol> getAuthorities() {
		PersonaRol.findAllByPersona(this).collect { it.rol } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
        
        String toString() {
            return "$apellidoPaterno, $nombre"
        }
}
