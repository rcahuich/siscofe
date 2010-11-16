package siscofe

class Union {

    String codigo
    String nombre
    String nombreCompleto

    static constraints ={
        codigo blank:false, size:1..6, unique:true
        nombre blank:false, size:1..64, unique:true
        nombreCompleto blank:false, size:1..128
    }

    static mapping = {
        table 'uniones'
    }

    String toString() {
        return "$nombre"
    }
}
