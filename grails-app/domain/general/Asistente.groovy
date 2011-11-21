package general

class Asistente extends Persona{

    Doctor doctor

    static constraints = {
        doctor blank:false
    }

    String toString() {
        return "Asistente: $asistente"
    }
}
