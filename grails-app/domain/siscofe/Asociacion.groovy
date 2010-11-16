package siscofe

class Asociacion {

    String codigo
    String nombre
    String nombreCompleto
    Union union

    static belongsTo = [Union]
    
    static constraints = {
        codigo unique:'union',blank:false,size:1..6
        nombre unique:'union',blank:false,size:1..64
        nombreCompleto blank:false,size:1..128
    }

    static mapping = {
        table 'asociaciones'
    }
    
    String toString() {
        return nombre
    }
}
