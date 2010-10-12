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
    Set bautismos
    Direccion direccion
    //Membresia membresia
    //List correosElectronicos
    //List telefonos
    //List hijos
    //List oficios

    static hasMany = [bautismos : Bautismo]

    static constraints = {
        nombre maxSize:64, blank:false
        apellidoPaterno maxSize:64, blank:false
        apellidoMaterno maxSize:64, blank:false
        fechaNacimiento()
        estadoCivil maxSize:32,inList:['CASADO','SOLTERO','VIUDO','DIVORCIADO','UNION LIBRE']
        nivelEstudio maxSize:32,inList:['NINGUNO','PRIMARIA','SECUNDARIA','BACHILLERATO','TECNICO','LICENCIATURA','DIPLOMADO','MAESTRIA','DOCTORADO']
        religionAnterior maxSize:32,inList:['NINGUNO','CATOLICO','PENTECOSTES','TESTIGO DE JEHOVA','MORMON','BAUTISTA','OTRO']
        codigo maxSize:32, nullable:true
		direccion unique: true
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
