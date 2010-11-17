package siscofe

class Membresia {
    Persona persona
    Iglesia iglesia
    Bautismo bautismo
    ProfesionDeFe profesionDeFe
    CartaDeTraslado cartaDeTraslado
    
    static constraints = {
        persona blank:false
        iglesia blank:false
    }

    static mapping = {
        table 'membresias'
    }
}
