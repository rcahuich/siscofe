package siscofe

class CartaDeTraslado extends Bautismo {

    String pastorEnFuncion

    static constraints = {
        pastorEnFuncion maxSize:64, blank:false
    }
}
