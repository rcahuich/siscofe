package siscofe

class Direccion {
    String pais
    String estado
    String municipio
    String ciudad
    String ejido
    String colonia
    String calle
    String numero
    String codigoPostal
    
    static constraints = {
        pais maxSize:16, blank:false
        estado maxSize:16, blank:false
        municipio maxSize:32, blank:true
        ciudad maxSize:32, blank:true
        ejido maxSize:32, blank:true
        colonia maxSize:32, blank:true
        calle maxSize:32, blank:false
        numero maxSize:8, blank:true
        codigoPostal maxSize:16, blank:true
    }

    static mapping = {
        table 'direcciones'
    }

    String toString () {
        "Mun. $municipio, Cd. de $ciudad, $ejido Col. $colonia, Calle $calle Num. $numero, CP: $codigoPostal"
    }
}
