package siscofe

class Bautismo {
    String lugarBautismo
    Date fechaBautismo
    String ministroOficiante
    Boolean estudioVeintiochoCreencias = true
    String cursoBiblico
    String numeroVotoJuntaAdministrativa
    Date fechaVotoJuntaAdministrativa
    String numeroVotoJuntaDirectiva
    Date fechaVotoJuntaDirectiva
    Integer numeroBautismo
    Persona persona
    Iglesia iglesia
    //Persona adoctrinador

    static belongsTo = Persona

    static constraints = {
        lugarBautismo maxSize:64, blank:false
        ministroOficiante maxSize:64, blank:false
        cursoBiblico maxSize:64, blank:false
        numeroVotoJuntaAdministrativa maxSize:10, blank:false
        numeroVotoJuntaDirectiva maxSize:10, blank:false
        numeroBautismo blank:false
    }
    
    static mapping = {
        table 'bautismos'
    }
}
