package siscofe

class Bautismo {
    String lugarBautismo
    Date fechaBautismo
    String nombrePastorQueBautizo
    Boolean estudioVeintiochoCreencias
    String cursoBiblico
    String numeroVotoJuntaAdministrativa
    Date fechaVotoJuntaAdministrativa
    String numeroVotoJuntaDirectiva
    Date fechaVotoJuntaDirectiva
    Persona persona
    Iglesia iglesia

    static belongsTo = Persona

    static constraints = {
        lugarBautismo maxSize:64, blank:false
        nombrePastorQueBautizo maxSize:64, blank:false
        cursoBiblico maxSize:64, blank:false
        numeroVotoJuntaAdministrativa maxSize:10, blank:false
        numeroVotoJuntaDirectiva maxSize:10, blank:false
    }
    
    static mapping = {
        table 'bautismos'
    }
}
