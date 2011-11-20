package general

class Doctor extends Persona{

    String especialidades

    static hasMany = [cita:Cita, receta:Receta, historialClinico:HistorialClinico]
    
    static constraints = {
        especialidades blank:false, maxSize: 200
    }
}
