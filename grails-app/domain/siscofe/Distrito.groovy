package siscofe

class Distrito {

    String codigo
    String nombre
    String nombreCompleto
    Asociacion asociacion

    static constraints = {
        codigo blank:false,size:1..18,unique:'asociacion'
        nombre blank:false,size:1..64,unique:'asociacion'
        nombreCompleto blank:false,size:1..128
    }

    static mapping = {
        table 'distritos'
    }

    String toString() {
        return nombre
    }
}
