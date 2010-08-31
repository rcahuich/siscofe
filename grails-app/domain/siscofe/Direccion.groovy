package siscofe

class Direccion {
    String pais
    String estado
    String ciudad
    String municipio
    String ejido
    String colonia
    String calle
    String numero
    String codigoPostal

    static constraints = {
        pais maxSize:16, blank:false
        estado maxSize:16, blank:false
        ciudad maxSize:32, blank:false
        municipio maxSize:32, blank:true
        ejido maxSize:32, blank:true
        colonia maxSize:32, blank:false
        calle maxSize:32, blank:false
        numero maxSize:8, blank:true
        codigoPostal maxSize:16, blank:false
    }

    static mapping = {
        table 'direcciones'
    }
}
