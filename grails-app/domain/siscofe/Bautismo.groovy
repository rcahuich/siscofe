package siscofe

class Bautismo {

    String lugarBautismo
    String ministroOficiante
    String codigo
    String cursoBiblico
    String numeroVotoJuntaAdministrativa
    String numeroVotoJuntaDirectiva
    String numeroBautismo
    String comentarios
    Date fechaBautismo
    Date fechaVotoJuntaAdministrativa
    Date fechaVotoJuntaDirectiva
    Date fechaAlta = new Date()
    Boolean estudioVeintiochoCreencias = true
    Persona persona
    Iglesia iglesia
 
    static belongsTo = Persona//muchos a uno (Una persona tienen muchos Bautismo)

    static constraints = {
        lugarBautismo maxSize:64, blank:false
        ministroOficiante maxSize:64, blank:false
        codigo maxSize:6, blank:false
        cursoBiblico maxSize:64, blank:false
        numeroVotoJuntaAdministrativa maxSize:10, blank:false
        numeroVotoJuntaDirectiva maxSize:10, blank:false
        numeroBautismo maxSize:5, inList:['1','2','3']
        comentarios maxSize:512
    }
    
    static mapping = {
        table 'bautismos'
    }
}
