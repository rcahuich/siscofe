package siscofe


class Iglesia {
    String nombre
    Direccion direccion
    

//    static hasOne = [direccion : Direccion ]


    static constraints = {
        direccion unique: true
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
