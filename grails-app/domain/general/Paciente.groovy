package general

class Paciente extends Persona{

    static hasMany = [cita:Cita, receta:Receta, historialClinico:HistorialClinico]

    static constraints = {
    }

    String toString() {
        return "Paciente: $paciente"
    }
}
