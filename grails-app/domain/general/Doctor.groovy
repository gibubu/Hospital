package general

class Doctor extends Persona{
    Asistente asistente

    static hasMany = [cita:Cita, receta:Receta, historialClinico:HistorialClinico, especialidad:Especialidad]
    
    static constraints = {
    }

    String toString() {
        return "Doctor: $doctor"
    }
}
