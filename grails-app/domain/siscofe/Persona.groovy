package siscofe

class Persona {
    String nombre
    String apellidoPaterno
    String apellidoMaterno
    String nombreCompleto
    String estadoCivil
    String nivelEstudio
    String religionAnterior
    String tipoDeSangre
    String enfermedades
    Date fechaNacimiento
    String phoneCasa
    String phoneTrabajo
    String phoneCelular
    String correo   
    String sexo
    Boolean sabeLeer = true
    Boolean esMiembro = false
    Direccion direccion
    Set ingresos
    Set bajas

    //static transients = ['nombreCompleto']

    static hasMany = [ingresos : TipoDeIngreso, bajas : Baja]

    static constraints = {
        nombre maxSize:64, blank:false
        apellidoPaterno maxSize:64, blank:false
        apellidoMaterno maxSize:64, blank:false
        estadoCivil maxSize:32, inList:['CASADO','SOLTERO','VIUDO','DIVORCIADO']
        nivelEstudio maxSize:32, inList:['NINGUNO','PRIMARIA','SECUNDARIA','BACHILLERATO','TECNICO','LICENCIATURA','DIPLOMADO','MAESTRIA','DOCTORADO']
        religionAnterior maxSize:32, inList:['NINGUNO','ADVENTISTA DEL SEPTIMO DIA','CATOLICO','PENTECOSTES','TESTIGO DE JEHOVA','MORMON','BAUTISTA','OTRO']
        tipoDeSangre maxSize:12, blank:false, inList:['A+','A-','B+','B-','AB+','AB-','O+','O-','No sabe']
        sexo maxSize:12, inList:['Masculino','Femenino']
        phoneCasa maxSize:32, blank:true
        phoneTrabajo maxSize:32, blank:true
        phoneCelular maxSize:32, blank:true
        enfermedades maxSize:128
        fechaNacimiento blank:false
        sabeLeer blank:false
        direccion blank:false, unique:true
    }

    static mapping = {
        table 'personas'
        nombre index:'persona_nombre_idx','persona_nombre_completo_idx','persona_nombre_apellido_paterno_idx'
        apellidoPaterno index:'persona_apellido_paterno_idx','persona_nombre_completo_idx','persona_nombre_apellido_paterno_idx'
        apellidoMaterno index:'persona_apellido_materno_idx','persona_nombre_completo_idx'
        colums{
            ingresos lazy:false
        }
    }

//    static namedQueries = {

//    }

    String getNombreCompleto() {
        return "$nombre $apellidoPaterno $apellidoMaterno"
    }
    
    String toString () {
        "$nombre $apellidoPaterno $apellidoMaterno"
    }

}
