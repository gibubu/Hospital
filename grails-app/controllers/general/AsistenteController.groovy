package general

import org.springframework.dao.DataIntegrityViolationException

class AsistenteController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [asistenteInstanceList: Asistente.list(params), asistenteInstanceTotal: Asistente.count()]
    }

    def create() {
        [asistenteInstance: new Asistente(params)]
    }

    def save() {
        def asistenteInstance = new Asistente(params)
        if (!asistenteInstance.save(flush: true)) {
            render(view: "create", model: [asistenteInstance: asistenteInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'asistente.label', default: 'Asistente'), asistenteInstance.id])
        redirect(action: "show", id: asistenteInstance.id)
    }

    def show() {
        def asistenteInstance = Asistente.get(params.id)
        if (!asistenteInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'asistente.label', default: 'Asistente'), params.id])
            redirect(action: "list")
            return
        }

        [asistenteInstance: asistenteInstance]
    }

    def edit() {
        def asistenteInstance = Asistente.get(params.id)
        if (!asistenteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'asistente.label', default: 'Asistente'), params.id])
            redirect(action: "list")
            return
        }

        [asistenteInstance: asistenteInstance]
    }

    def update() {
        def asistenteInstance = Asistente.get(params.id)
        if (!asistenteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'asistente.label', default: 'Asistente'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (asistenteInstance.version > version) {
                asistenteInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'asistente.label', default: 'Asistente')] as Object[],
                          "Another user has updated this Asistente while you were editing")
                render(view: "edit", model: [asistenteInstance: asistenteInstance])
                return
            }
        }

        asistenteInstance.properties = params

        if (!asistenteInstance.save(flush: true)) {
            render(view: "edit", model: [asistenteInstance: asistenteInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'asistente.label', default: 'Asistente'), asistenteInstance.id])
        redirect(action: "show", id: asistenteInstance.id)
    }

    def delete() {
        def asistenteInstance = Asistente.get(params.id)
        if (!asistenteInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'asistente.label', default: 'Asistente'), params.id])
            redirect(action: "list")
            return
        }

        try {
            asistenteInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'asistente.label', default: 'Asistente'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'asistente.label', default: 'Asistente'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
