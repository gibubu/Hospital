package general

import org.springframework.dao.DataIntegrityViolationException

class HistorialClinicoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [historialClinicoInstanceList: HistorialClinico.list(params), historialClinicoInstanceTotal: HistorialClinico.count()]
    }

    def create() {
        [historialClinicoInstance: new HistorialClinico(params)]
    }

    def save() {
        def historialClinicoInstance = new HistorialClinico(params)
        if (!historialClinicoInstance.save(flush: true)) {
            render(view: "create", model: [historialClinicoInstance: historialClinicoInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'historialClinico.label', default: 'HistorialClinico'), historialClinicoInstance.id])
        redirect(action: "show", id: historialClinicoInstance.id)
    }

    def show() {
        def historialClinicoInstance = HistorialClinico.get(params.id)
        if (!historialClinicoInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'historialClinico.label', default: 'HistorialClinico'), params.id])
            redirect(action: "list")
            return
        }

        [historialClinicoInstance: historialClinicoInstance]
    }

    def edit() {
        def historialClinicoInstance = HistorialClinico.get(params.id)
        if (!historialClinicoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'historialClinico.label', default: 'HistorialClinico'), params.id])
            redirect(action: "list")
            return
        }

        [historialClinicoInstance: historialClinicoInstance]
    }

    def update() {
        def historialClinicoInstance = HistorialClinico.get(params.id)
        if (!historialClinicoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'historialClinico.label', default: 'HistorialClinico'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (historialClinicoInstance.version > version) {
                historialClinicoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'historialClinico.label', default: 'HistorialClinico')] as Object[],
                          "Another user has updated this HistorialClinico while you were editing")
                render(view: "edit", model: [historialClinicoInstance: historialClinicoInstance])
                return
            }
        }

        historialClinicoInstance.properties = params

        if (!historialClinicoInstance.save(flush: true)) {
            render(view: "edit", model: [historialClinicoInstance: historialClinicoInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'historialClinico.label', default: 'HistorialClinico'), historialClinicoInstance.id])
        redirect(action: "show", id: historialClinicoInstance.id)
    }

    def delete() {
        def historialClinicoInstance = HistorialClinico.get(params.id)
        if (!historialClinicoInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'historialClinico.label', default: 'HistorialClinico'), params.id])
            redirect(action: "list")
            return
        }

        try {
            historialClinicoInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'historialClinico.label', default: 'HistorialClinico'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'historialClinico.label', default: 'HistorialClinico'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
