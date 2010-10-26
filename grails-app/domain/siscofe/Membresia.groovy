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
        tipoIngreso maxSize:16, inList:['BAUTISMO','TRALADO','PROFESION DE FE']
    }

    static mapping = {
        table 'membresias'
    }
}
