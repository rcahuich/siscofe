package siscofe

class Iglesia {
    String nombre

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
