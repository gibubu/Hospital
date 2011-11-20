import general.*

class BootStrap {

    def init = { servletContext ->

        def springSecurityService
        def sessionFactory

        log.info "Creando Roles"
        def rolAdministrador = Rol.findByAuthority('ROLE_ADMINISTRADOR')
        if (!rolAdministrador) {
            rolAdministrador = new Rol(authority: 'ROLE_ADMINISTRADOR').save(flush:true)
        }
        def rolDoctor = Rol.findByAuthority('ROLE_DOCTOR')
        if (!rolDoctor) {
            rolDoctor = new Rol(authority: 'ROLE_DOCTOR').save(flush:true)
        }
        def rolAsistente = Rol.findByAuthority('ROLE_ASISTENTE')
        if (!rolAsistente) {
            rolAsistente = new Rol(authority: 'ROLE_ASISTENTE').save(flush:true)
        }
        def rolPaciente = Rol.findByAuthority('ROLE_PACIENTE')
        if (!rolPaciente) {
            rolPaciente = new Rol(authority: 'ROLE_PACIENTE').save(flush:true)
        }

        log.info "Creando Usuarios"
        def administrador = Persona.findByUsername("admin")
        if(!administrador){
            administrador = new Persona(
                nombre : 'Seth Karim',
                apellidoPaterno : 'Luis',
                apellidoMaterno : 'Martinez',
                direccion: 'Dormi 3',
                telefono : '8261130554',
                email : 'cuentasvarias@hotmail.com',
                sexo: 'M',
                edad: new Date(),
                username:'admin',
                password : 'admin',
                enabled : true
            ).save(flush:true)
        }

        log.info "Asociando roles al Administrador"
        PersonaRol.create(administrador, rolAdministrador)
        PersonaRol.create(administrador, rolDoctor)
        PersonaRol.create(administrador, rolAsistente)
        PersonaRol.create(administrador, rolPaciente)

    }
    def destroy = {
    }
}