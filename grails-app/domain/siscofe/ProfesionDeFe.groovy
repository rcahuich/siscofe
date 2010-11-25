package siscofe

class ProfesionDeFe extends TipoDeIngreso {

    String pastorEnFuncion
    String iglesiaProcedencia

    static constraints = {
        pastorEnFuncion maxSize:64, blank:false
        iglesiaProcedencia maxSize:64, blank:false
    }

    String toString () {
        "ID DE PROFESION DE FE: $id"
    }
}
