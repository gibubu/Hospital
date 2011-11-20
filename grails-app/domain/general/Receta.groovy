package general

class Receta {

    Date fecha
    String descripcion
    Doctor doctor

    static belongsTo = [paciente:Paciente]

    static constraints = {
        fecha blank: false
        descripcion blank: false, maxSize: 400
        doctor blank: false
    }

    String toString() {
        return "Receta: $fecha | $paciente | $doctor"
    }
}
