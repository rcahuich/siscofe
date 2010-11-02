package siscofe


class Iglesia {
    String nombre
    String tipoIglesia
    String telefono
    Direccion direccion

    static constraints = {
        nombre maxSize:64, blank:false
        tipoIglesia inList:['FILIAL','GRUPO','ORGANIZADA']
        telefono maxSize:32, blank:true
        direccion unique: true
    }

    static mapping = {
        table 'iglesias'
        nombre index:'iglesia_nombre_idx'
    }

    String toString () {
        "$nombre"
    }
}
