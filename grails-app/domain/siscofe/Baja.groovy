package siscofe

class Baja {

    Persona persona
    Date fechaBaja = new Date()
    String tipoDeBaja
//    Date fechaBaja
    String pastorEnFuncion
    String iglesia
    String comentarios
//    TipoDeIngreso ingresoDadoDeBaja

    static belongsTo = Persona//muchos a uno (Una persona tienen muchas Bajas)
    
    static constraints = {
        pastorEnFuncion maxSize:64, blank:false
        tipoDeBaja maxSize:12, inList:['MUERTE','TRASLADO','APOSTASIA','PARADERO DESCONOCIDO']
        comentarios maxSize:512
    }

    static mapping = {
        table 'bajas'
    }
}
