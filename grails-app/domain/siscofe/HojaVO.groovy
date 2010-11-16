package siscofe

class HojaVO {

    Persona persona
    TipoDeIngreso tipoIngreso

    static constraints = {
    }

    String toString () {
        "$persona $tipoIngreso"
    }
}
