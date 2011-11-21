package general

class Especialidad {
    
    String nombre

    static belongsTo = [doctor:Doctor]
    
    static constraints = {
        nombre blank:false, maxSize:64
    }

    String toString() {
        return "Especialidad: $nombre | $doctor"
    }
}
