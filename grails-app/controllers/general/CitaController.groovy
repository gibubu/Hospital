package general

import org.springframework.dao.DataIntegrityViolationException

class CitaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [citaInstanceList: Cita.list(params), citaInstanceTotal: Cita.count()]
    }

    def create() {
        [citaInstance: new Cita(params)]
    }

    def save() {
        def citaInstance = new Cita(params)
        if (!citaInstance.save(flush: true)) {
            render(view: "create", model: [citaInstance: citaInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'cita.label', default: 'Cita'), citaInstance.id])
        redirect(action: "show", id: citaInstance.id)
    }

    def show() {
        def citaInstance = Cita.get(params.id)
        if (!citaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'cita.label', default: 'Cita'), params.id])
            redirect(action: "list")
            return
        }

        [citaInstance: citaInstance]
    }

    def edit() {
        def citaInstance = Cita.get(params.id)
        if (!citaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cita.label', default: 'Cita'), params.id])
            redirect(action: "list")
            return
        }

        [citaInstance: citaInstance]
    }

    def update() {
        def citaInstance = Cita.get(params.id)
        if (!citaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cita.label', default: 'Cita'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (citaInstance.version > version) {
                citaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'cita.label', default: 'Cita')] as Object[],
                          "Another user has updated this Cita while you were editing")
                render(view: "edit", model: [citaInstance: citaInstance])
                return
            }
        }

        citaInstance.properties = params

        if (!citaInstance.save(flush: true)) {
            render(view: "edit", model: [citaInstance: citaInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'cita.label', default: 'Cita'), citaInstance.id])
        redirect(action: "show", id: citaInstance.id)
    }

    def delete() {
        def citaInstance = Cita.get(params.id)
        if (!citaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'cita.label', default: 'Cita'), params.id])
            redirect(action: "list")
            return
        }

        try {
            citaInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'cita.label', default: 'Cita'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'cita.label', default: 'Cita'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
