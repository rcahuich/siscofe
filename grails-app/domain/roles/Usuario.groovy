package roles

class Usuario {

	String username
	String password
	boolean enabled = false
	boolean accountExpired = false
	boolean accountLocked = false
	boolean passwordExpired = false
        String nombre
        String apellido
        String correo
        String nombreCompleto

	static constraints = {
		username blank: false, unique: true, size:1..64
                password blank: false, size:1..128
                nombre blank: false, size:1..64
                apellido blank: false, size:1..64
                correo nullable: true, size:1..128
	}

	static mapping = {
                table 'usuarios'
		password column: '`password`'
	}

	Set<Rol> getAuthorities() {
		UsuarioRol.findAllByUsuario(this).collect { it.rol } as Set
	}

        String getNombreCompleto() {
            return "$apellido, $nombre"
        }

        String toString() {
            return "$apellido, $nombre"
        }
}
