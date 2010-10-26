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
    Boolean miembro = false
    Boolean esHombre = true
    Boolean sabeLeer = true
    Direccion direccion
    Set bautismos
    
    static hasMany = [bautismos : Bautismo]

    static constraints = {
        nombre maxSize:64, blank:false
        apellidoPaterno maxSize:64, blank:false
        apellidoMaterno maxSize:64, blank:false
        estadoCivil maxSize:32, inList:['CASADO','SOLTERO','VIUDO','DIVORCIADO','UNION LIBRE']
        nivelEstudio maxSize:32, inList:['NINGUNO','PRIMARIA','SECUNDARIA','BACHILLERATO','TECNICO','LICENCIATURA','DIPLOMADO','MAESTRIA','DOCTORADO']
        religionAnterior maxSize:32, inList:['NINGUNO','ADVENTISTA DEL SEPTIMO DIA','CATOLICO','PENTECOSTES','TESTIGO DE JEHOVA','MORMON','BAUTISTA','OTRO']
        tipoDeSangre maxSize:4, blank:false, inList:['A+','A-','B+','B-','AB+','AB-','O+','O-']
        enfermedades maxSize:128
        fechaNacimiento blank:false
        direccion blank:false, unique:true
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
