package siscofe

class Persona {
    String nombre
    String apellidoPaterno
    String apellidoMaterno
    String estadoCivil
    String nivelEstudio
    String religionAnterior
    String tipoDeSangre
    String enfermedades
    Date fechaNacimiento
    Boolean miembro = true
    Boolean esHombre = true
    Boolean sabeLeer = true
    Direccion direccion
    Set bautismos
    
    static hasMany = [bautismos : Bautismo]

    static constraints = {
        nombre maxSize:64, blank:false
        apellidoPaterno maxSize:64, blank:false
        apellidoMaterno maxSize:64, blank:false
        fechaNacimiento blank:false
        estadoCivil maxSize:32, blank:false, inList:['CASADO','SOLTERO','VIUDO','DIVORCIADO','UNION LIBRE']
        nivelEstudio maxSize:32, blank:false, inList:['NINGUNO','PRIMARIA','SECUNDARIA','BACHILLERATO','TECNICO','LICENCIATURA','DIPLOMADO','MAESTRIA','DOCTORADO']
        religionAnterior maxSize:32, blank:false, inList:['NINGUNO','CATOLICO','PENTECOSTES','TESTIGO DE JEHOVA','MORMON','BAUTISTA','OTRO']
        tipoDeSangre maxSize:32, blank:false, inList: ['A+','A-','B+','B-','AB+','AB-','O+','O-']
	enferemedades maxSize:512
        fechaNacimiento blank:false
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
