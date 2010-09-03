package siscofe

class Membresia {
    Persona persona
    Iglesia iglesia
    Bautismo bautismo
    String tipoIngreso

    static constraints = {
        iglesia blank:false
        tipoIngreso maxSize:16, inList:['BAUTISMO','TRALADO','PROFESION DE FE']
    }

    static mapping = {
        table 'membresias'
    }
}
