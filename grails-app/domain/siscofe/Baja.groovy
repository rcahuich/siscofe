package siscofe

class Baja {

    Persona persona
    Date fechaActual = new Date()
    String tipoDeBaja
    Date fecha
    String pastorEnFuncion
    String iglesia
    String comentarios

    static belongsTo = Persona//muchos a uno (Una persona tienen muchos Tipos de Ingreso)
    
    static constraints = {
        pastorEnFuncion maxSize:64, blank:false
        tipoDeBaja maxSize:12, inList:['Muerte','Traslado','Apostasia','Panadero Desconocido']
        comentarios maxSize:512
    }

    static mapping = {
        table 'bajas'
    }
}
