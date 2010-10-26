package siscofe

class Membresia {
    Persona persona
    Iglesia iglesia
    Bautismo bautismo
    String tipoIngreso
    String codigo

    //AQUI HAY QUE AGREGAR LOS CAMPOS QUE SE RELLENARAN EN CASO DE QUE VENGA POR TRASLADO O PROFESION DE FE
    //String pastorQueRecomienda //Para Traslado y Profesion de Fe
    //Iglesia iglesiaProcedenciaDentro //Para traslado de dentro
    //String iglesiaProcedenciaFuera //Para traslado de fuera


    static constraints = {
        persona blank:false
        iglesia blank:false
        tipoIngreso maxSize:16, inList:['BAUTISMO','TRALADO','PROFESION DE FE']
    }

    static mapping = {
        table 'membresias'
    }
}
