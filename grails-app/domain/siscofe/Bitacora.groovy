package siscofe

class Bitacora {

    Date fecha = new Date()
    String usuario
    String comentario

    static mapping = {
        table 'bitacoras'
    }

    static constraints = {
        usuario maxSize:64, blank:false
        comentario blank: false, maxSize: 500
    }
}
