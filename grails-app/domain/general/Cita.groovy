package general

class Cita {

    Date fecha
    Doctor doctor
    boolean validPac = false
    boolean validDoc = false

    static belongsTo = [paciente:Paciente]
    
    static constraints = {
        fecha blank: false
        paciente blank: false
        doctor blank: false
    }

    String toString() {
        return "Cita: $fecha | $paciente | $doctor"
    }
}
