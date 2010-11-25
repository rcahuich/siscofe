package siscofe

class CartaDeTraslado extends TipoDeIngreso {

    String pastorEnFuncion
    String iglesiaProcedencia
    
    static constraints = {
        pastorEnFuncion maxSize:64, blank:false
        iglesiaProcedencia maxSize:64, blank:false
    }

    String toString () {
        "ID DE CARTA DE TRASLADO: $id"
    }
}
