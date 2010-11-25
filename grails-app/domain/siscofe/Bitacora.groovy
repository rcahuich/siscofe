package siscofe

class Bitacora {

    String tabla
    Date fecha = new Date()
    String usuario
    String actividad
    String campo

    static mapping = {
        table 'bitacoras'
    }

    static constraints = {
        usuario maxSize:64, blank:false
        actividad blank: false, maxSize: 500
        campo nullable:true

    }
}
