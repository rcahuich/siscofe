package siscofe

class Membresia {
    Persona persona
    //Iglesia iglesia
    //Bautismo bautismo

    static constraints = {
        iglesia blank:false
    }

    static mapping = {
        table 'membresias'
    }
}
