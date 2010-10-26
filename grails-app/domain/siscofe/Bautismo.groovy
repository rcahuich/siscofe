package siscofe

class Bautismo {

    //Tipos de Bautismo: Bautismo, Profesion de Fe, Traslado;
    
    String lugarBautismo
    Date fechaBautismo
    String ministroOficiante
    Boolean estudioVeintiochoCreencias = true
    String cursoBiblico
    String numeroVotoJuntaAdministrativa
    Date fechaVotoJuntaAdministrativa
    String numeroVotoJuntaDirectiva
    Date fechaVotoJuntaDirectiva
    String numeroBautismo
    Persona persona
    Iglesia iglesia
    //Persona adoctrinador

    static belongsTo = Persona//muchos a uno

    static constraints = {

        lugarBautismo maxSize:64, blank:false
        ministroOficiante maxSize:64, blank:false
        cursoBiblico maxSize:64, blank:false
        numeroVotoJuntaAdministrativa maxSize:10, blank:false
        numeroVotoJuntaDirectiva maxSize:10, blank:false
        numeroBautismo maxSize:5, inList:['1','2','3']
    }
    
    static mapping = {
        table 'bautismos'
    }
}
