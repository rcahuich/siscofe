package siscofe

class CartaDeTraslado extends TipoDeIngreso {

    String pastorEnFuncion
    String iglesiaProcedencia
    String trasladadoA

    static constraints = {
        pastorEnFuncion maxSize:64, blank:false
        iglesiaProcedencia maxSize:64, blank:false
        trasladadoA maxSize:64, blank:false
    }
}
