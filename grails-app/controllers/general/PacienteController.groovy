package general

import grails.plugins.springsecurity.Secured
import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils
import org.springframework.dao.DataIntegrityViolationException

@Secured(['ROLE_ADMINISTRADOR','ROLE_DOCTOR','ROLE_ASISTENTE','ROLE_PACIENTE'])
class PacienteController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    @Secured(['ROLE_ADMINISTRADOR','ROLE_DOCTOR'])
    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [pacienteInstanceList: Paciente.list(params), pacienteInstanceTotal: Paciente.count()]
    }

    @Secured(['ROLE_ADMINISTRADOR','ROLE_DOCTOR'])
    def create() {
        [pacienteInstance: new Paciente(params)]
    }

    @Secured(['ROLE_ADMINISTRADOR','ROLE_DOCTOR'])
    def save() {
        def pacienteInstance = new Paciente(params)
        if (!pacienteInstance.save(flush: true)) {
            render(view: "create", model: [pacienteInstance: pacienteInstance])
            return
        }

        //Agregando rol vendedor al usuario
        def rolPaciente = Rol.findByAuthority('ROLE_PACIENTE')
        if (!pacienteInstance.authorities.contains(rolPaciente)){
            log.debug "Poniendole ROLE_PACIENTE al usuario: ${pacienteInstance}"
            PersonaRol.create(pacienteInstance, rolPaciente)
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'paciente.label', default: 'Paciente'), pacienteInstance.id])
        redirect(action: "show", id: pacienteInstance.id)
    }

    def show() {
        def pacienteInstance = Paciente.get(params.id)
        if (!pacienteInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'paciente.label', default: 'Paciente'), params.id])
            redirect(action: "list")
            return
        }

        [pacienteInstance: pacienteInstance]
    }

    def edit() {
        def pacienteInstance = Paciente.get(params.id)
        if (!pacienteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'paciente.label', default: 'Paciente'), params.id])
            redirect(action: "list")
            return
        }

        [pacienteInstance: pacienteInstance]
    }

    def update() {
        def pacienteInstance = Paciente.get(params.id)
        if (!pacienteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'paciente.label', default: 'Paciente'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (pacienteInstance.version > version) {
                pacienteInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'paciente.label', default: 'Paciente')] as Object[],
                          "Another user has updated this Paciente while you were editing")
                render(view: "edit", model: [pacienteInstance: pacienteInstance])
                return
            }
        }

        pacienteInstance.properties = params

        if (!pacienteInstance.save(flush: true)) {
            render(view: "edit", model: [pacienteInstance: pacienteInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'paciente.label', default: 'Paciente'), pacienteInstance.id])
        redirect(action: "show", id: pacienteInstance.id)
    }

    def delete() {
        def pacienteInstance = Paciente.get(params.id)
        if (!pacienteInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'paciente.label', default: 'Paciente'), params.id])
            redirect(action: "list")
            return
        }

        try {
            pacienteInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'paciente.label', default: 'Paciente'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'paciente.label', default: 'Paciente'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
