package general

class HistorialClinico {

    Date fecha
    Doctor doctor
    String enfermedad
    String antecedentesFamiliares
    String antecedentesPersonales
    String examenGeneral
    String examenRegional
    String comentario

    static belongsTo = [paciente:Paciente]

    static constraints = {
        fecha blank: false
        doctor blank: false
        enfermedad blank:false, maxSize: 400
        antecedentesFamiliares nullable: true, maxSize: 400
        antecedentesPersonales nullable: true, maxSize: 400
        examenGeneral nullable: true, maxSize: 400
        examenRegional nullable: true, maxSize: 400
        comentario blank: false, maxSize: 400
    }

    String toString() {
        return "Historial: $fecha | $paciente"
    }
}
