package siscofe

class Iglesia {
    String nombre
    Set direcciones

    
    static hasMany = [direcciones : Direccion]

    static constraints = {
        nombre maxSize:64, blank:false
    }

    static mapping = {
        table 'iglesias'
        nombre index:'iglesia_nombre_idx'
    }

    String toString () {
        "$nombre"
    }
}
