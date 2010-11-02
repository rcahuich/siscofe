package siscofe

class TipoDeIngreso {

    Persona persona
    Iglesia iglesia
    String numeroVotoJuntaAdministrativa
    String numeroVotoJuntaDirectiva
    Date fechaVotoJuntaAdministrativa
    Date fechaVotoJuntaDirectiva
    Date fechaAlta = new Date()

     static belongsTo = Persona//muchos a uno (Una persona tienen muchos Tipos de Ingreso)

    static constraints = {
        numeroVotoJuntaAdministrativa maxSize:10, blank:false
        numeroVotoJuntaDirectiva maxSize:10, blank:false
        comentarios maxSize:512
    }

    static mapping = {
        table 'tipo_ingreso'
    }
}
