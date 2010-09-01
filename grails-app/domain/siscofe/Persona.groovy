package siscofe

class Persona {
    String nombre
    String apellidoPaterno
    String apellidoMaterno
    Boolean miembro = true
    Date fechaNacimiento
    String estadoCivil
    Boolean esHombre = true
    Boolean sabeLeer = true
    String nivelEstudio
    String religionAnterior
    String codigo
    //List direcciones
    //Membresia membresia
    //List correosElectronicos
    //List telefonos
    //List hijos
    //List oficios

    static constraints = {
        nombre maxSize:64, blank:false
        apellidoPaterno maxSize:64, blank:false
        apellidoMaterno maxSize:64, blank:false
        estadoCivil maxSize:32,inList:['CASADO','SOLTERO','VIUDO','DIVORCIADO','UNION LIBRE']
        nivelEstudio maxSize:32,inList:['NINGUNO','PRIMARIA','SECUNDARIA','BACHILLERATO','TECNICO','LICENCIATURA','DIPLOMADO','MAESTRIA','DOCTORADO']
        religionAnterior maxSize:32,inList:['CATOLICO','PENTECOSTES','TESTIGO DE JEHOVA','MORMON','BAUTISTA','NINGUNO','OTRO']
        codigo maxSize:32, nullable:true
    }

    static mapping = {
        table 'personas'
        nombre index:'persona_nombre_idx','persona_nombre_completo_idx','persona_nombre_apellido_paterno_idx'
        apellidoPaterno index:'persona_apellido_paterno_idx','persona_nombre_completo_idx','persona_nombre_apellido_paterno_idx'
        apellidoMaterno index:'persona_apellido_materno_idx','persona_nombre_completo_idx'
    }

    String toString () {
        "$nombre $apellidoPaterno $apellidoMaterno"
    }

}
