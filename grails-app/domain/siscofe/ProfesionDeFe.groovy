package siscofe

class ProfesionDeFe extends Bautismo {

    String pastorEnFuncion

    static constraints = {
        pastorEnFuncion maxSize:64, blank:false
    }
}
